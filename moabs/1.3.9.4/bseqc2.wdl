version 1.0

task Bseqc2 {
  input {
    Boolean? arg_input_bam
    Boolean? arg_output_statistics
    Boolean? arg_reference_fasta
    Boolean? arg_read_length
    Boolean? arg_number_reads
    Boolean? arg_rscript_mbias
  }
  command <<<
    bseqc2 \
      ~{true="-i" false="" arg_input_bam} \
      ~{true="-o" false="" arg_output_statistics} \
      ~{true="-r" false="" arg_reference_fasta} \
      ~{true="-l" false="" arg_read_length} \
      ~{true="-n" false="" arg_number_reads} \
      ~{true="-s" false="" arg_rscript_mbias}
  >>>
  parameter_meta {
    arg_input_bam: "[ --infile ] arg               Input BAM file."
    arg_output_statistics: "[ --outfile ] arg              Output statistics."
    arg_reference_fasta: "[ --reference ] arg            Reference FASTA file. This option is  required."
    arg_read_length: "[ --length ] arg (=150)        Read length. Length of the query sequence  in the BAM file may be shorter than the  read length, but the read length should  ensure the longest mapping. Default: 150."
    arg_number_reads: "[ --numreads ] arg (=20000000) Number of reads. First `n` reads will be  examined. Be aware of extremely low CpG  methylation levels when chrM is the first  chromosome. Default: 20000000."
    arg_rscript_mbias: "[ --rscript ] arg              Rscript for mbias plot. Default:  `$bindir/bseqc2mbiasplot.R`."
  }
}