version 1.0

task MegalodonExtrasPhaseVariantsExtractHaplotypeReads {
  input {
    String alignment_filename
    String out_basename
  }
  command <<<
    megalodon_extras phase_variants extract_haplotype_reads \
      ~{alignment_filename} \
      ~{out_basename}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0"
  }
  parameter_meta {
    alignment_filename: "Alignment filename."
    out_basename: "Basename for read ids output."
  }
  output {
    File out_stdout = stdout()
  }
}