version 1.0

task CnvkitpyAccess {
  input {
    Int? min_gap_size
    String? exclude
    File? output_file_name
  }
  command <<<
    cnvkit_py access \
      ~{if defined(min_gap_size) then ("--min-gap-size " +  '"' + min_gap_size + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    min_gap_size: "Minimum gap size between accessible sequence regions.\\nRegions separated by less than this distance will be\\njoined together. [Default: 5000]"
    exclude: "Additional regions to exclude, in BED format. Can be\\nused multiple times."
    output_file_name: "Output file name\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}