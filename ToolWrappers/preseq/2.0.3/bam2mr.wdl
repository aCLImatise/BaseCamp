version 1.0

task Bam2mr {
  input {
    File? name_output_file
    Boolean? suff
    Boolean? seg_len
    Boolean? max_reads
    Boolean? verbose
    Boolean? about
    File bam_file
  }
  command <<<
    bam2mr \
      ~{bam_file} \
      ~{if (name_output_file) then "-output" else ""} \
      ~{if (suff) then "-suff" else ""} \
      ~{if (seg_len) then "-seg_len" else ""} \
      ~{if (max_reads) then "-max_reads" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_output_file: "Name of output file"
    suff: "read name suffix length (default: 0)"
    seg_len: "maximum allowed insert size"
    max_reads: "maximum number of reads to hold for merging"
    verbose: "print more information"
    about: "print about message"
    bam_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}