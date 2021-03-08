version 1.0

task MmseqsCreatesubdb {
  input {
    Int? sub_db_mode
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs createsubdb \
      ~{if defined(sub_db_mode) then ("--subdb-mode " +  '"' + sub_db_mode + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    sub_db_mode: "Subdb mode 0: copy data 1: soft link data and write index [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}