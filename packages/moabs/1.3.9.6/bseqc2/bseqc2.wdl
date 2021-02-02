version 1.0

task Bseqc2 {
  input {
    Boolean? arg_input_bam
    Boolean? arg_output_statistics
    Boolean? arg_reference_fasta
    Boolean? arg_number_reads
    Boolean? arg_rscript_mbias
    String required_dot
  }
  command <<<
    bseqc2 \
      ~{required_dot} \
      ~{if (arg_input_bam) then "-i" else ""} \
      ~{if (arg_output_statistics) then "-o" else ""} \
      ~{if (arg_reference_fasta) then "-r" else ""} \
      ~{if (arg_number_reads) then "-n" else ""} \
      ~{if (arg_rscript_mbias) then "-s" else ""}
  >>>
  parameter_meta {
    arg_input_bam: "[ --infile ] arg               Input BAM file."
    arg_output_statistics: "[ --outfile ] arg              Output statistics."
    arg_reference_fasta: "[ --reference ] arg            Reference FASTA file. This option is"
    arg_number_reads: "[ --numreads ] arg (=20000000) Number of reads. First `n` reads will be\\nexamined. Be aware of extremely low CpG\\nmethylation levels when chrM is the first\\nchromosome. Default: 20000000."
    arg_rscript_mbias: "[ --rscript ] arg              Rscript for mbias plot. Default:\\n`$bindir/bseqc2mbiasplot.R`."
    required_dot: "-l [ --length ] arg (=150)        Read length. Length of the query sequence "
  }
  output {
    File out_stdout = stdout()
  }
}