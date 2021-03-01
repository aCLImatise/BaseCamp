version 1.0

task ExtractExonspyGtfFile {
  input {
    Boolean? v
  }
  command <<<
    extract_exons_py gtf_file \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}