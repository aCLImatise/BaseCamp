version 1.0

task Laser {
  input {
    Boolean? extra_sensitive
    String? threads
    Int? maximum_deletion_length
    Int? length_alignment_mapped
    File? filename_fastq_givena
    Directory? tmpdir
    String? core_options
    String? recal_options
    File? minimum_expected_support
    Boolean? keep_raw_bam
    Boolean? secondary
    Boolean? x_a
    Boolean? adv_cigar
    Boolean? dont_recalibrate
    Boolean? inter_chromosomal
  }
  command <<<
    laser \
      ~{if (extra_sensitive) then "--extra-sensitive" else ""} \
      ~{if defined(threads) then ("-T " +  '"' + threads + '"') else ""} \
      ~{if defined(maximum_deletion_length) then ("-M " +  '"' + maximum_deletion_length + '"') else ""} \
      ~{if defined(length_alignment_mapped) then ("-s " +  '"' + length_alignment_mapped + '"') else ""} \
      ~{if defined(filename_fastq_givena) then ("-S " +  '"' + filename_fastq_givena + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(core_options) then ("--core-options " +  '"' + core_options + '"') else ""} \
      ~{if defined(recal_options) then ("--recal-options " +  '"' + recal_options + '"') else ""} \
      ~{if defined(minimum_expected_support) then ("-w " +  '"' + minimum_expected_support + '"') else ""} \
      ~{if (keep_raw_bam) then "--keep_raw_bam" else ""} \
      ~{if (secondary) then "--secondary" else ""} \
      ~{if (x_a) then "--xa" else ""} \
      ~{if (adv_cigar) then "--adv-cigar" else ""} \
      ~{if (dont_recalibrate) then "--dont-recalibrate" else ""} \
      ~{if (inter_chromosomal) then "--interchromosomal" else ""}
  >>>
  parameter_meta {
    extra_sensitive: "Be more sensitive (at the expense of runtime)."
    threads: "Threads."
    maximum_deletion_length: "Maximum deletion length to look for (default: 1000 in\\nregular mode, 10000 when using --extra-sensitive)."
    length_alignment_mapped: "Length of alignment seeds to be mapped by external\\nread mapper (BWA), default: 40."
    filename_fastq_givena: "Filename of FASTQ file with split reads (if not given,\\na temporary such file be produced)."
    tmpdir: "Directory to use for temporary files (if not given,\\nsystem default is used)."
    core_options: "Additional options to pass on to LASER core algorithm.\\nCall \\\"laser-core\\\" without parameters for a list of\\noptions."
    recal_options: "Additional options to pass on to LASER's recalibration\\nalgorithm. Call \\\"laser-recalibrate\\\" without parameters\\nfor a list of options."
    minimum_expected_support: "Minimum expected support for a SNP/indel in order to\\nbe written to file with putative variations. These\\nSNPs/indels will be used for recalibration of\\nalignment scores."
    keep_raw_bam: "Keep BAM file produced by laser-core. Default: only\\nkeep BAM after recalibration."
    secondary: "Include secondary alignments in the BAM file."
    x_a: "Encode secondary alignments in XA tags (default:\\nseparate lines)."
    adv_cigar: "Use X/= in CIGAR strings instead of M."
    dont_recalibrate: "Skip recalibration step."
    inter_chromosomal: "Look for interchromosomal read pairs and for\\ninterchromosomal split reads.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}