// app/javascript/channels/web_notifications_channel.js
// Client-side which assumes you've already requested
// the right to send web notifications.
import consumer from "./consumer"
 
consumer.subscriptions.create("WebNotificationsChannel", {
  received(data) {
    var body = data
    var options = {body: data["body"]}  
    new Notification(data["title"], options)
  }
})