version 1.0

task Mhpl8r {
  input {
    File? log_file
    Boolean? tee
    Boolean? v
  }
  command <<<
    mhpl8r \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (tee) then "--tee" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    log_file: "log file for diagnostic messages, warnings, and errors"
    tee: "write diagnostic output to logfile AND terminal (stderr)"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}