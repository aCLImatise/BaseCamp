version 1.0

task Wesclient {
  input {
    Int? host
    String? proto
    Boolean? quiet
    String? outdir
    Int? attachments
    String? page
    Int? page_size
    Boolean? run
    String? get
    String? log
    Boolean? list
    Boolean? info
    Boolean? wait
    Boolean? no_wait
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
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(attachments) then ("--attachments " +  '"' + attachments + '"') else ""} \
      ~{if defined(page) then ("--page " +  '"' + page + '"') else ""} \
      ~{if defined(page_size) then ("--page-size " +  '"' + page_size + '"') else ""} \
      ~{if (run) then "--run" else ""} \
      ~{if defined(get) then ("--get " +  '"' + get + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (wait) then "--wait" else ""} \
      ~{if (no_wait) then "--no-wait" else ""} \
      ~{if defined(auth) then ("--auth " +  '"' + auth + '"') else ""}
  >>>
  parameter_meta {
    host: "Example: '--host=localhost:8080'. Defaults to"
    proto: "Options: [http, https]. Defaults to WES_API_PROTO\\n(https)."
    quiet: ""
    outdir: ""
    attachments: "A comma separated list of attachments to include.\\nExample: --attachments=\\\"testdata/dockstore-tool-\\nmd5sum.cwl,testdata/md5sum.input\\\""
    page: ""
    page_size: ""
    run: ""
    get: "Specify a <workflow-id>. Example: '--get=<workflow-\\nid>'"
    log: "Specify a <workflow-id>. Example: '--log=<workflow-\\nid>'"
    list: ""
    info: ""
    wait: ""
    no_wait: ""
    auth: ""
    workflow_url: "job_order"
    wes_api_host_dot: "--auth AUTH           Defaults to WES_API_AUTH."
  }
  output {
    File out_stdout = stdout()
  }
}