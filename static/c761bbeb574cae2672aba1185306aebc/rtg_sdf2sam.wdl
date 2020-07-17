version 1.0

task RtgSdf2sam {
  input {
    String? sdf_containing_sequences
    File? output_filename_extension
    Boolean? no_gzip
    String? option
  }
  command <<<
    rtg sdf2sam \
      ~{option} \
      ~{if defined(sdf_containing_sequences) then ("--input " +  '"' + sdf_containing_sequences + '"') else ""} \
      ~{if defined(output_filename_extension) then ("--output " +  '"' + output_filename_extension + '"') else ""} \
      ~{true="--no-gzip" false="" no_gzip}
  >>>
  parameter_meta {
    sdf_containing_sequences: "SDF containing sequences"
    output_filename_extension: "output filename (extension added if not present). Use '-' to write to standard output"
    no_gzip: "do not gzip the output"
    option: ""
  }
}