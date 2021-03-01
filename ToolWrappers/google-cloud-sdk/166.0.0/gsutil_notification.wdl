version 1.0

task GsutilNotification {
  input {
    Boolean? specify_event_filter
    Boolean? specifies_payload_format
    Boolean? specifies_keyvalue_attribute
    Boolean? specifies_prefix_filter
    Boolean? skips_creation_permission
    Boolean? cloud_pubsub_topic
    String generated_dot
  }
  command <<<
    gsutil notification \
      ~{generated_dot} \
      ~{if (specify_event_filter) then "-e" else ""} \
      ~{if (specifies_payload_format) then "-f" else ""} \
      ~{if (specifies_keyvalue_attribute) then "-m" else ""} \
      ~{if (specifies_prefix_filter) then "-p" else ""} \
      ~{if (skips_creation_permission) then "-s" else ""} \
      ~{if (cloud_pubsub_topic) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_event_filter: "Specify an event type filter for this notification config. Cloud\\nStorage will only send notifications of this type. You may specify\\nthis parameter multiple times to allow multiple event types. If not\\nspecified, Cloud Storage will send notifications for all event\\ntypes. The valid types are:\\nOBJECT_FINALIZE - An object has been created.\\nOBJECT_METADATA_UPDATE - The metadata of an object has changed.\\nOBJECT_DELETE - An object has been permanently deleted.\\nOBJECT_ARCHIVE - A live Cloud Storage object has been archived."
    specifies_payload_format: "Specifies the payload format of notification messages. Must be\\neither \\\"json\\\" for a payload matches the object metadata for the\\nJSON API, or \\\"none\\\" to specify no payload at all. In either case,\\nnotification details are available in the message attributes."
    specifies_keyvalue_attribute: "Specifies a key:value attribute that will be appended to the set\\nof attributes sent to Cloud Pub/Sub for all events associated with\\nthis notification config. You may specify this parameter multiple\\ntimes to set multiple attributes."
    specifies_prefix_filter: "Specifies a prefix path filter for this notification config. Cloud\\nStorage will only send notifications for objects in this bucket\\nwhose names begin with the specified prefix."
    skips_creation_permission: "Skips creation and permission assignment of the Cloud Pub/Sub topic.\\nThis is useful if the caller does not have permission to access\\nthe topic in question, or if the topic already exists and has the\\nappropriate publish permission assigned."
    cloud_pubsub_topic: "The Cloud Pub/Sub topic to which notifications should be sent. If\\nnot specified, this command will choose a topic whose project is\\nyour default project and whose ID is the same as the Cloud Storage\\nbucket name."
    generated_dot: "The optional token parameter can be used to validate notifications events."
  }
  output {
    File out_stdout = stdout()
  }
}