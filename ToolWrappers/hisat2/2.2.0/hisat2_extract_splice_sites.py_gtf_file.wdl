version 1.0

task Hisat2ExtractSpliceSitespyGtfFile {
  input {
    Boolean? v
  }
  command <<<
    hisat2_extract_splice_sites_py gtf_file \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}