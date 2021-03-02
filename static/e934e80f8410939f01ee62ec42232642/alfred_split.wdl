version 1.0

task AlfredSplit {
  input {
    Boolean? arg_min_mapping
    Boolean? arg_reference_fasta
    File? p
    File? q
    Boolean? arg_na_sample
    Boolean? arg_input_phased
    Boolean? assign_unphased_reads
    Boolean? single_haplotypetagged_bam
    String un_phased_dot_bam
  }
  command <<<
    alfred split \
      ~{un_phased_dot_bam} \
      ~{if (arg_min_mapping) then "-m" else ""} \
      ~{if (arg_reference_fasta) then "-r" else ""} \
      ~{if (p) then "-p" else ""} \
      ~{if (q) then "-q" else ""} \
      ~{if (arg_na_sample) then "-s" else ""} \
      ~{if (arg_input_phased) then "-v" else ""} \
      ~{if (assign_unphased_reads) then "-a" else ""} \
      ~{if (single_haplotypetagged_bam) then "-i" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/alfred:0.2.3--hf3ca161_0"
  }
  parameter_meta {
    arg_min_mapping: "[ --map-qual ] arg (=10)     min. mapping quality"
    arg_reference_fasta: "[ --reference ] arg          reference fasta file"
    p: "[ --hap1 ] arg (=\\\"h1.bam\\\")   haplotype1 output file"
    q: "[ --hap2 ] arg (=\\\"h2.bam\\\")   haplotype2 output file"
    arg_na_sample: "[ --sample ] arg (=NA12878)  sample name (as in BCF)"
    arg_input_phased: "[ --vcffile ] arg            input phased VCF/BCF file"
    assign_unphased_reads: "[ --assign ]                 assign unphased reads randomly"
    single_haplotypetagged_bam: "[ --interleaved ]            single haplotype-tagged BAM"
    un_phased_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_p = "${in_p}"
    File out_q = "${in_q}"
  }
}