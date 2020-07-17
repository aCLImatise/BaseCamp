version 1.0

task GsutilNotification {
  input {
    Boolean? specify_type_filter
    Boolean? specifies_payload_format
    Boolean? specifies_keyvalue_attribute
    Boolean? specifies_filter_send
    Boolean? skips_creation_assignment
    Boolean? cloud_pubsub_topic
  }
  command <<<
    gsutil notification \
      ~{true="-e" false="" specify_type_filter} \
      ~{true="-f" false="" specifies_payload_format} \
      ~{true="-m" false="" specifies_keyvalue_attribute} \
      ~{true="-p" false="" specifies_filter_send} \
      ~{true="-s" false="" skips_creation_assignment} \
      ~{true="-t" false="" cloud_pubsub_topic}
  >>>
  parameter_meta {
    specify_type_filter: "Specify an event type filter for this notification config. Cloud Storage will only send notifications of this type. You may specify this parameter multiple times to allow multiple event types. If not specified, Cloud Storage will send notifications for all event types. The valid types are: OBJECT_FINALIZE - An object has been created. OBJECT_METADATA_UPDATE - The metadata of an object has changed. OBJECT_DELETE - An object has been permanently deleted. OBJECT_ARCHIVE - A live Cloud Storage object has been archived."
    specifies_payload_format: "Specifies the payload format of notification messages. Must be either \"json\" for a payload matches the object metadata for the JSON API, or \"none\" to specify no payload at all. In either case, notification details are available in the message attributes."
    specifies_keyvalue_attribute: "Specifies a key:value attribute that will be appended to the set of attributes sent to Cloud Pub/Sub for all events associated with this notification config. You may specify this parameter multiple times to set multiple attributes."
    specifies_filter_send: "Specifies a prefix path filter for this notification config. Cloud Storage will only send notifications for objects in this bucket whose names begin with the specified prefix."
    skips_creation_assignment: "Skips creation and permission assignment of the Cloud Pub/Sub topic. This is useful if the caller does not have permission to access the topic in question, or if the topic already exists and has the appropriate publish permission assigned."
    cloud_pubsub_topic: "The Cloud Pub/Sub topic to which notifications should be sent. If not specified, this command will choose a topic whose project is your default project and whose ID is the same as the Cloud Storage bucket name."
  }
}