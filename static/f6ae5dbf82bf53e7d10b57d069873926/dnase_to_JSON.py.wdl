version 1.0

task DnaseToJSONpy {
  input {
    Int? window_size
    Boolean? ignores_strand_information
    Boolean? atacseq_mode_default
  }
  command <<<
    dnase_to_JSON_py \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if (ignores_strand_information) then "-i" else ""} \
      ~{if (atacseq_mode_default) then "-A" else ""}
  >>>
  parameter_meta {
    window_size: "Resize all regions to a specific length"
    ignores_strand_information: "Ignores strand information in BED file"
    atacseq_mode_default: "ATAC-seq mode (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}