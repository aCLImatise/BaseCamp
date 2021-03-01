version 1.0

task Humann2RnaDnaNorm {
  input {
    String? input_dna
    String? input_rna
    File? output_basename
    String? method
    Boolean? log_transform
    Int? log_base
  }
  command <<<
    humann2_rna_dna_norm \
      ~{if defined(input_dna) then ("--input_dna " +  '"' + input_dna + '"') else ""} \
      ~{if defined(input_rna) then ("--input_rna " +  '"' + input_rna + '"') else ""} \
      ~{if defined(output_basename) then ("--output_basename " +  '"' + output_basename + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if (log_transform) then "--log_transform" else ""} \
      ~{if defined(log_base) then ("--log_base " +  '"' + log_base + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dna: "Original DNA output table (tsv or biom format)"
    input_rna: "Original RNA output table (tsv or biom format)"
    output_basename: "Path/basename for the three output tables; DEFAULT=results"
    method: "Choice of smoothing method; DEFAULT=laplace"
    log_transform: "Report log-transformed relative expression values"
    log_base: "Base for log transformation (if requested); DEFAULT=2.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_basename = "${in_output_basename}"
  }
}