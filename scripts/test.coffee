module.exports = function(robot) {
  // attach hubot-arm to robot 
  require('hubot-arm')(robot)
 
  robot.respond(/testopcode/i, function(msg) {
    // use hubot-request-arm 
    msg.robot.arm('request')({
      method: 'GET',
      url: 'https://www.operationcode.org/',
      format: 'html'
    }).then(function(res) {
      msg.send(res.$('title'));
    });
  });
};