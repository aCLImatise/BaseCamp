version 1.0

task HailctlDataprocConnect {
  input {
    Boolean? dry_run
    String? zone
    String? port
    String name
  }
  command <<<
    hailctl dataproc connect \
      ~{name} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""}
  >>>
  parameter_meta {
    dry_run: ""
    zone: ""
    port: ""
    name: "{notebook,nb,spark-ui,ui,spark-ui1,ui1,spark-ui2,ui2,spark-history,hist}"
  }
  output {
    File out_stdout = stdout()
  }
}