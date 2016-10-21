# Description:
#   Defines periodic executions

module.exports = (robot) ->
   cronJob = require('cron').CronJob
   tz = 'America/Los_Angeles'
   new cronJob('0 */1 * * * *', everyFiveMinutes, null, true, tz)
 
   room = zmeta-control
 
   everyFiveMinutes = ->
     robot.messageRoom room, 'I will nag you every minute'