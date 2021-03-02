version 1.0

task Vcfentropy {
  input {
    Boolean? fast_a_reference
    Boolean? window_size
    File vcf_file
  }
  command <<<
    vcfentropy \
      ~{vcf_file} \
      ~{if (fast_a_reference) then "--fasta-reference" else ""} \
      ~{if (window_size) then "--window-size" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a_reference: "FASTA reference file to use to obtain flanking sequences"
    window_size: "Size of the window over which to calculate entropy"
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}