version 1.0

task BamToBigwig.pl {
  input {
    Boolean? bam
    Boolean? cs
    Boolean? strand
    Boolean? output_directory
    Boolean? log
    Boolean? man
  }
  command <<<
    bam_to_bigwig.pl \
      ~{true="--bam" false="" bam} \
      ~{true="--cs" false="" cs} \
      ~{true="--strand" false="" strand} \
      ~{true="-o" false="" output_directory} \
      ~{true="--log" false="" log} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    bam: "Input file in BAM format"
    cs: "Chromosome sizes file"
    strand: "Use this option if the input BAM file is strictly strand-specific, ie. contains only reads mapped to either the positive or negative strand. Possible values are either '+' or '-'. If the value given here is '+', the interim bedGraph file will be created with positive values. A '-' given here will create the inerim bedGraph file with negative values, which is required for proper visualization of bigWig files holding coverage profiles of reads mapped to the negative strand in the UCSC genome browser. If the input BAM file is not strand-specific, ie contains reads mapped to both positive and negative strand, then the default value '+' will be used, resulting in bigWig coverage profiles rendered in positive (y-axis direction) in the UCSC genome browser."
    output_directory: "Output directory"
    log: "Name of the log file. Unless specified, the default log file will be \"bam_to_bigwig.log\" in the given output directory."
    man: "Prints the manual page and exits"
  }
}