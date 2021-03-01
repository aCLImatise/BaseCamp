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
    docker: "quay.io/biocontainers/hisat2:2.2.1--he1b5a44_1"
  }
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}