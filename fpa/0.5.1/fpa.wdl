version 1.0

task Fpa {
  input {
    Int? compression_out
    Int? format
    File? path_input_use
    Int? internal_threshold
    File? path_output_use
  }
  command <<<
    fpa \
      ~{if defined(compression_out) then ("--compression-out " +  '"' + compression_out + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(path_input_use) then ("--input " +  '"' + path_input_use + '"') else ""} \
      ~{if defined(internal_threshold) then ("--internal-threshold " +  '"' + internal_threshold + '"') else ""} \
      ~{if defined(path_output_use) then ("--output " +  '"' + path_output_use + '"') else ""}
  >>>
  parameter_meta {
    compression_out: "Output compression format, the input compression format is chosen by default [possible values: gzip, bzip2,\\nlzma, no]"
    format: "Force the format used [possible values: paf, m4]"
    path_input_use: "Path to input file, use '-' for stdin [default: -]"
    internal_threshold: "A match is internal match if overhang length > match length * internal threshold this option set internal\\nmatch [default: 0.8]"
    path_output_use: "Path to output file, use '-' for stdout [default: -]"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_use = "${in_path_output_use}"
  }
}