version 1.0

task BamToBigwigpl {
  input {
    Boolean? bam
    Boolean? cs
    Boolean? strand
    Directory? output_directory
    File? log
    Boolean? man
  }
  command <<<
    bam_to_bigwig_pl \
      ~{if (bam) then "--bam" else ""} \
      ~{if (cs) then "--cs" else ""} \
      ~{if (strand) then "--strand" else ""} \
      ~{if (output_directory) then "-o" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "Input file in BAM format"
    cs: "Chromosome sizes file"
    strand: "Use this option if the input BAM file is strictly strand-specific,\\nie. contains only reads mapped to either the positive or negative\\nstrand. Possible values are either '+' or '-'. If the value given\\nhere is '+', the interim bedGraph file will be created with positive\\nvalues. A '-' given here will create the inerim bedGraph file with\\nnegative values, which is required for proper visualization of\\nbigWig files holding coverage profiles of reads mapped to the\\nnegative strand in the UCSC genome browser. If the input BAM file is\\nnot strand-specific, ie contains reads mapped to both positive and\\nnegative strand, then the default value '+' will be used, resulting\\nin bigWig coverage profiles rendered in positive (y-axis direction)\\nin the UCSC genome browser."
    output_directory: "Output directory"
    log: "Name of the log file. Unless specified, the default log file will be\\n\\\"bam_to_bigwig.log\\\" in the given output directory."
    man: "Prints the manual page and exits\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    File out_log = "${in_log}"
  }
}