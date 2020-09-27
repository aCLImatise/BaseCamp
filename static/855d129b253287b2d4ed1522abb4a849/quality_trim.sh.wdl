version 1.0

task QualityTrimsh {
  input {
    Int? file_mandatory_
  }
  command <<<
    quality_trim_sh \
      ~{if defined(file_mandatory_) then ("-1 " +  '"' + file_mandatory_ + '"') else ""}
  >>>
  parameter_meta {
    file_mandatory_: "file (mandatory)\\n-2 R2 file (mandatory)\\n-d directory where trimmomatic is installed, default: /opt/Trimmomatic/\\n-a adapters to remove, default: TruSeq3-PE.fa\\n-o output directory (optional)\\n-f file name\\n-l minimus length of trimmed reads (default 40)\\n-s sample name (mandatory)\\n-g group name (optional). If unset, samples will be gathered in NO_GROUP group\\n-M RAM memmory (Gb), default 8\\n-T threads, default 1\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
  }
}