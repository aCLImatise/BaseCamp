version 1.0

task RtgSdf2fastq {
  input {
    String? sdf_containing_sequences
    File? output_filename_extension
    Int? default_quality
    Boolean? interleave
    Int? line_length
    Boolean? no_gzip
    String? option
  }
  command <<<
    rtg sdf2fastq \
      ~{option} \
      ~{if defined(sdf_containing_sequences) then ("--input " +  '"' + sdf_containing_sequences + '"') else ""} \
      ~{if defined(output_filename_extension) then ("--output " +  '"' + output_filename_extension + '"') else ""} \
      ~{if defined(default_quality) then ("--default-quality " +  '"' + default_quality + '"') else ""} \
      ~{true="--interleave" false="" interleave} \
      ~{if defined(line_length) then ("--line-length " +  '"' + line_length + '"') else ""} \
      ~{true="--no-gzip" false="" no_gzip}
  >>>
  parameter_meta {
    sdf_containing_sequences: "SDF containing sequences"
    output_filename_extension: "output filename (extension added if not present). Use '-' to write to standard output"
    default_quality: "default quality value to use if the SDF does not contain quality data (0-63)"
    interleave: "interleave paired data into a single output file. Default is to split to separate output files"
    line_length: "maximum number of nucleotides to print on a line of output. A value of 0 indicates no limit (Default is 0)"
    no_gzip: "do not gzip the output"
    option: ""
  }
}