version 1.0

task Arvws {
  input {
    String? uuid
    String? filters
    String? start_time
    String? id
    Int? poll_interval
    Boolean? no_poll
    String? pipeline
    String? job
  }
  command <<<
    arv_ws \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(filters) then ("--filters " +  '"' + filters + '"') else ""} \
      ~{if defined(start_time) then ("--start-time " +  '"' + start_time + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(poll_interval) then ("--poll-interval " +  '"' + poll_interval + '"') else ""} \
      ~{if (no_poll) then "--no-poll" else ""} \
      ~{if defined(pipeline) then ("--pipeline " +  '"' + pipeline + '"') else ""} \
      ~{if defined(job) then ("--job " +  '"' + job + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    uuid: "Filter events on object_uuid"
    filters: "Arvados query filter to apply to log events (JSON\\nencoded)"
    start_time: "Arvados query filter to fetch log events created at or\\nafter this time. This will be server time in UTC.\\nAllowed format: YYYY-MM-DD or YYYY-MM-DD hh:mm:ss"
    id: "Start from given log id."
    poll_interval: "If websockets is not available, specify the polling\\ninterval, default is every 15 seconds"
    no_poll: "Do not poll if websockets are not available, just fail"
    pipeline: "Supply pipeline uuid, print log output from pipeline\\nand its jobs"
    job: "Supply job uuid, print log output from jobs"
  }
  output {
    File out_stdout = stdout()
  }
}