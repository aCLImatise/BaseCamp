version 1.0

task Dxua {
  input {
    Boolean? print_environment_information
    Boolean? arg_specify_token
    Boolean? arg_name_id
    Boolean? arg_name_destination
    Boolean? arg_name_remote
    String? visibility
    String? property
    String? type
    String? tag
    String? details
    Boolean? recursive
    String? read_threads
    Boolean? arg_number_parallel_compression
    Boolean? arg_number_parallel_upload
    Boolean? arg_m_size
    String? throttle
    Boolean? arg_number_tries
    Boolean? do_not_compress
    Boolean? report_upload_progress
    Boolean? _verbose_logging
    Boolean? wait_on_close
    Boolean? do_not_resume
    Boolean? test
    Boolean? read_file_content
    File file
  }
  command <<<
    dxua \
      ~{file} \
      ~{true="-e" false="" print_environment_information} \
      ~{true="-a" false="" arg_specify_token} \
      ~{true="-p" false="" arg_name_id} \
      ~{true="-f" false="" arg_name_destination} \
      ~{true="-n" false="" arg_name_remote} \
      ~{if defined(visibility) then ("--visibility " +  '"' + visibility + '"') else ""} \
      ~{if defined(property) then ("--property " +  '"' + property + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(details) then ("--details " +  '"' + details + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{if defined(read_threads) then ("--read-threads " +  '"' + read_threads + '"') else ""} \
      ~{true="-c" false="" arg_number_parallel_compression} \
      ~{true="-u" false="" arg_number_parallel_upload} \
      ~{true="-s" false="" arg_m_size} \
      ~{if defined(throttle) then ("--throttle " +  '"' + throttle + '"') else ""} \
      ~{true="-r" false="" arg_number_tries} \
      ~{true="--do-not-compress" false="" do_not_compress} \
      ~{true="-g" false="" report_upload_progress} \
      ~{true="-v" false="" _verbose_logging} \
      ~{true="--wait-on-close" false="" wait_on_close} \
      ~{true="--do-not-resume" false="" do_not_resume} \
      ~{true="--test" false="" test} \
      ~{true="-i" false="" read_file_content}
  >>>
  parameter_meta {
    print_environment_information: "[ --env ]                       Print environment information"
    arg_specify_token: "[ --auth-token ] arg            Specify the authentication token"
    arg_name_id: "[ --project ] arg               Name or ID of the destination project"
    arg_name_destination: "[ --folder ] arg (=/)           Name of the destination folder"
    arg_name_remote: "[ --name ] arg                  Name of the remote file (Note: Extension  \".gz\" will be appended if the file is  compressed before uploading)"
    visibility: "(=visible)        Use \"--visibility hidden\" to set the  file's visibility as hidden."
    property: "Key-value pair to add as a property;  repeat as necessary, e.g. \"--property  key1=val1 --property key2=val2\""
    type: "Type of the data object; repeat as  necessary, e.g. \"--type type1 --type  type2\""
    tag: "Tag of the data object; repeat as  necessary, e.g. \"--tag tag1 --tag tag2\""
    details: "JSON to store as details"
    recursive: "Recursively upload the directories"
    read_threads: "(=2)            Number of parallel disk read threads"
    arg_number_parallel_compression: "[ --compress-threads ] arg (=7) Number of parallel compression threads"
    arg_number_parallel_upload: "[ --upload-threads ] arg (=8)   Number of parallel upload threads"
    arg_m_size: "[ --chunk-size ] arg (=75M)     Size of chunks in which the file should be uploaded. Specify an integer size in bytes or append optional units (B, K, M, G).  E.g., '50M' sets chunk size to 50  megabytes."
    throttle: "Limit maximum upload speed. Specify an  integer to set speed in bytes/second or  append optional units (B, K, M, G). E.g.,  '3M' limits upload speed to 3  megabytes/second. If not set, uploads are  not throttled."
    arg_number_tries: "[ --tries ] arg (=3)            Number of tries to upload each chunk"
    do_not_compress: "Do not compress file(s) before upload"
    report_upload_progress: "[ --progress ]                  Report upload progress"
    _verbose_logging: "[ --verbose ]                   Verbose logging"
    wait_on_close: "Wait for file objects to be closed before  exiting"
    do_not_resume: "Do not attempt to resume any incomplete  uploads"
    test: "Test upload agent settings"
    read_file_content: "[ --read-from-stdin ]           Read file content from stdin"
    file: ""
  }
}