version 1.0

task RtgSdf2fasta {
  input {
    String? sdf_containing_sequences
    File? output_filename_extension
    Boolean? interleave
    Int? line_length
    Boolean? no_gzip
    String? option
  }
  command <<<
    rtg sdf2fasta \
      ~{option} \
      ~{if defined(sdf_containing_sequences) then ("--input " +  '"' + sdf_containing_sequences + '"') else ""} \
      ~{if defined(output_filename_extension) then ("--output " +  '"' + output_filename_extension + '"') else ""} \
      ~{true="--interleave" false="" interleave} \
      ~{if defined(line_length) then ("--line-length " +  '"' + line_length + '"') else ""} \
      ~{true="--no-gzip" false="" no_gzip}
  >>>
  parameter_meta {
    sdf_containing_sequences: "SDF containing sequences"
    output_filename_extension: "output filename (extension added if not present). Use '-' to write to standard output"
    interleave: "interleave paired data into a single output file. Default is to split to separate output files"
    line_length: "maximum number of nucleotides to print on a line of output. A value of 0 indicates no limit (Default is 0)"
    no_gzip: "do not gzip the output"
    option: ""
  }
}