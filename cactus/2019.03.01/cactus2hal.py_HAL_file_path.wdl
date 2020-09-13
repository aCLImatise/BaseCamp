version 1.0

task Cactus2halpyHALFilePath {
  input {
    String? cache_bytes
    String? event
    Int cactus_two_hal_do_tpy
  }
  command <<<
    cactus2hal_py HAL_file_path \
      ~{cactus_two_hal_do_tpy} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(event) then ("--event " +  '"' + event + '"') else ""}
  >>>
  parameter_meta {
    cache_bytes: ""
    event: ""
    cactus_two_hal_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}