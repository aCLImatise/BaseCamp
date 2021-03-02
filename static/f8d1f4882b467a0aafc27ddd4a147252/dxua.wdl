version 1.0

task Dxua {
  input {
    Boolean? print_environment_information
    Boolean? arg_specify_authentication
    Boolean? arg_name_id
    Boolean? arg_name_destination
    Boolean? arg_name_remote
    File? visibility
    Int? property
    Int? type
    Int? tag
    String? details
    Boolean? recursive
    Int? read_threads
    Boolean? arg_number_parallel_compression
    Boolean? arg_number_parallel_upload
    Boolean? arg_m_size
    Int? throttle
    Boolean? arg_number_tries
    Boolean? do_not_compress
    Boolean? report_upload_progress
    Boolean? _verbose_logging
    Boolean? wait_on_close
    Boolean? read_file_content
    String exiting
    String uploads
  }
  command <<<
    dxua \
      ~{exiting} \
      ~{uploads} \
      ~{if (print_environment_information) then "-e" else ""} \
      ~{if (arg_specify_authentication) then "-a" else ""} \
      ~{if (arg_name_id) then "-p" else ""} \
      ~{if (arg_name_destination) then "-f" else ""} \
      ~{if (arg_name_remote) then "-n" else ""} \
      ~{if defined(visibility) then ("--visibility " +  '"' + visibility + '"') else ""} \
      ~{if defined(property) then ("--property " +  '"' + property + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(details) then ("--details " +  '"' + details + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if defined(read_threads) then ("--read-threads " +  '"' + read_threads + '"') else ""} \
      ~{if (arg_number_parallel_compression) then "-c" else ""} \
      ~{if (arg_number_parallel_upload) then "-u" else ""} \
      ~{if (arg_m_size) then "-s" else ""} \
      ~{if defined(throttle) then ("--throttle " +  '"' + throttle + '"') else ""} \
      ~{if (arg_number_tries) then "-r" else ""} \
      ~{if (do_not_compress) then "--do-not-compress" else ""} \
      ~{if (report_upload_progress) then "-g" else ""} \
      ~{if (_verbose_logging) then "-v" else ""} \
      ~{if (wait_on_close) then "--wait-on-close" else ""} \
      ~{if (read_file_content) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_environment_information: "[ --env ]                       Print environment information"
    arg_specify_authentication: "[ --auth-token ] arg            Specify the authentication token"
    arg_name_id: "[ --project ] arg               Name or ID of the destination project"
    arg_name_destination: "[ --folder ] arg (=/)           Name of the destination folder"
    arg_name_remote: "[ --name ] arg                  Name of the remote file (Note: Extension\\n\\\".gz\\\" will be appended if the file is\\ncompressed before uploading)"
    visibility: "(=visible)        Use \\\"--visibility hidden\\\" to set the\\nfile's visibility as hidden."
    property: "Key-value pair to add as a property;\\nrepeat as necessary, e.g. \\\"--property\\nkey1=val1 --property key2=val2\\\""
    type: "Type of the data object; repeat as\\nnecessary, e.g. \\\"--type type1 --type\\ntype2\\\""
    tag: "Tag of the data object; repeat as\\nnecessary, e.g. \\\"--tag tag1 --tag tag2\\\""
    details: "JSON to store as details"
    recursive: "Recursively upload the directories"
    read_threads: "(=2)            Number of parallel disk read threads"
    arg_number_parallel_compression: "[ --compress-threads ] arg (=7) Number of parallel compression threads"
    arg_number_parallel_upload: "[ --upload-threads ] arg (=8)   Number of parallel upload threads"
    arg_m_size: "[ --chunk-size ] arg (=75M)     Size of chunks in which the file should be\\nuploaded. Specify an integer size in bytes\\nor append optional units (B, K, M, G).\\nE.g., '50M' sets chunk size to 50\\nmegabytes."
    throttle: "Limit maximum upload speed. Specify an\\ninteger to set speed in bytes/second or\\nappend optional units (B, K, M, G). E.g.,\\n'3M' limits upload speed to 3\\nmegabytes/second. If not set, uploads are\\nnot throttled."
    arg_number_tries: "[ --tries ] arg (=3)            Number of tries to upload each chunk"
    do_not_compress: "Do not compress file(s) before upload"
    report_upload_progress: "[ --progress ]                  Report upload progress"
    _verbose_logging: "[ --verbose ]                   Verbose logging"
    wait_on_close: "Wait for file objects to be closed before"
    read_file_content: "[ --read-from-stdin ]           Read file content from stdin"
    exiting: "--do-not-resume                    Do not attempt to resume any incomplete "
    uploads: "--test                             Test upload agent settings"
  }
  output {
    File out_stdout = stdout()
  }
}