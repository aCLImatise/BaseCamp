version 1.0

task Hisat2ExtractExonspyGtfFile {
  input {
    Boolean? v
  }
  command <<<
    hisat2_extract_exons_py gtf_file \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}