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
    docker: "quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0"
  }
  parameter_meta {
    alignment_filename: "Alignment filename."
    out_basename: "Basename for read ids output."
  }
  output {
    File out_stdout = stdout()
  }
}