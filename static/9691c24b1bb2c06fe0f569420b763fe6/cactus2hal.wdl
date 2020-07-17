version 1.0

task Cactus2hal.pyHALFilePath {
  input {
    String? event
    String? cache_bytes
    String cactus_two_hal_do_tpy
  }
  command <<<
    cactus2hal.py HAL_file_path \
      ~{cactus_two_hal_do_tpy} \
      ~{if defined(event) then ("--event " +  '"' + event + '"') else ""} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""}
  >>>
  parameter_meta {
    event: ""
    cache_bytes: ""
    cactus_two_hal_do_tpy: ""
  }
}