version 1.0

task Cactus2halpyCache {
  input {
    String? cache_bytes
    String? event
    Int cactus_two_hal_do_tpy
  }
  command <<<
    cactus2hal_py cache_ \
      ~{cactus_two_hal_do_tpy} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(event) then ("--event " +  '"' + event + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cache_bytes: ""
    event: ""
    cactus_two_hal_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}