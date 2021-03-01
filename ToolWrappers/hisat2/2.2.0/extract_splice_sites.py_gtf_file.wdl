version 1.0

task ExtractSpliceSitespyGtfFile {
  input {
    Boolean? v
  }
  command <<<
    extract_splice_sites_py gtf_file \
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