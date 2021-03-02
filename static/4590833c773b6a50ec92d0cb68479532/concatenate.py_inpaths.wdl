version 1.0

task ConcatenatepyInpaths {
  input {
    Boolean? no_zip
    Boolean? keep_names
    Boolean? m
    String concatenated_otp_y
  }
  command <<<
    concatenate_py inpaths \
      ~{concatenated_otp_y} \
      ~{if (no_zip) then "--nozip" else ""} \
      ~{if (keep_names) then "--keepnames" else ""} \
      ~{if (m) then "-m" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vamb:3.0.2--py37hf01694f_0"
  }
  parameter_meta {
    no_zip: ""
    keep_names: ""
    m: ""
    concatenated_otp_y: ""
  }
  output {
    File out_stdout = stdout()
  }
}