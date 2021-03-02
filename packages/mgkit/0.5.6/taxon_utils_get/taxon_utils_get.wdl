version 1.0

task TaxonutilsGet {
  input {
    Boolean? verbose
    String? separator
    String? only_names
    Boolean? partial
    Boolean? include_children
    String taxonomy_file
    String? output_file
  }
  command <<<
    taxon_utils get \
      ~{taxonomy_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(only_names) then ("--only-names " +  '"' + only_names + '"') else ""} \
      ~{if (partial) then "--partial" else ""} \
      ~{if (include_children) then "--include-children" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    verbose: "Include header in the output"
    separator: "column separator"
    only_names: "Only get matched taxon names"
    partial: "Use partial matches if any found (implies -o)"
    include_children: "Include taxa that are children of the requested\\n(implies -o)"
    taxonomy_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}