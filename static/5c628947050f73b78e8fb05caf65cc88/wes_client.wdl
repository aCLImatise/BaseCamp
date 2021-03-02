version 1.0

task Wesclient {
  input {
    Int? host
    String? proto
    Int? attachments
    Int? page_size
    String? log
    String? auth
    String workflow_url
    String wes_api_host_dot
  }
  command <<<
    wes_client \
      ~{workflow_url} \
      ~{wes_api_host_dot} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if defined(proto) then ("--proto " +  '"' + proto + '"') else ""} \
      ~{if defined(attachments) then ("--attachments " +  '"' + attachments + '"') else ""} \
      ~{if defined(page_size) then ("--page-size " +  '"' + page_size + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(auth) then ("--auth " +  '"' + auth + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    host: "Example: '--host=localhost:8080'. Defaults to"
    proto: "Options: [http, https]. Defaults to WES_API_PROTO\\n(https)."
    attachments: "A comma separated list of attachments to include.\\nExample: --attachments=\\\"testdata/dockstore-tool-\\nmd5sum.cwl,testdata/md5sum.input\\\""
    page_size: "Specify a <workflow-id>. Example: '--get=<workflow-\\nid>'"
    log: "Specify a <workflow-id>. Example: '--log=<workflow-\\nid>'"
    auth: ""
    workflow_url: "job_order"
    wes_api_host_dot: "--auth AUTH           Defaults to WES_API_AUTH."
  }
  output {
    File out_stdout = stdout()
  }
}