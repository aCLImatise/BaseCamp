version 1.0

task BroadUtilspyGetBustardDir {
  input {
    String? loglevel
    String broad_utils_do_tpy
    String subcommand
    String get_bustard_dir
  }
  command <<<
    broad_utils_py get_bustard_dir \
      ~{broad_utils_do_tpy} \
      ~{subcommand} \
      ~{get_bustard_dir} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  parameter_meta {
    loglevel: "Verboseness of output. [default: ERROR]\\n"
    broad_utils_do_tpy: ""
    subcommand: ""
    get_bustard_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}