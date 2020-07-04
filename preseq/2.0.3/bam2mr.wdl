version 1.0

task Bam2mr {
  input {
    Boolean? name_output_file
    Boolean? suff
    Boolean? seg_len
    Boolean? max_reads
    Boolean? verbose
    Boolean? about
    String bam_file
  }
  command <<<
    bam2mr \
      ~{bam_file} \
      ~{true="-output" false="" name_output_file} \
      ~{true="-suff" false="" suff} \
      ~{true="-seg_len" false="" seg_len} \
      ~{true="-max_reads" false="" max_reads} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    name_output_file: "Name of output file "
    suff: "read name suffix length (default: 0) "
    seg_len: "maximum allowed insert size "
    max_reads: "maximum number of reads to hold for merging "
    verbose: "print more information "
    about: "print about message "
    bam_file: ""
  }
}