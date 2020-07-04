version 1.0

task GenerateGliomas.py {
  input {
    String? organism
    String? output_directory_allowed
    Boolean? skip_filter_overlap
  }
  command <<<
    generate_gliomas.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_allowed) then ("--output " +  '"' + output_directory_allowed + '"') else ""} \
      ~{true="--skip-filter-overlap" false="" skip_filter_overlap}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the list of allowed candidate fusion genes is generated, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_allowed: "The output directory where the list of allowed candidate fusion genes is generated. Default is '.'."
    skip_filter_overlap: "If set then it filters out the known fusion genes where the (i) genes are fully overlapping, or (ii) the genes are partially overlapping and are on the same strand. Default is 'False'."
  }
}