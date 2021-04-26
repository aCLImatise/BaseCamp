version 1.0

task Protgraph {
  input {
    Int? num_of_entries
    File? exclude_accessions
    Int? num_of_processes
    File? output_csv
    Boolean? help_all
    String files
    String arguments
  }
  command <<<
    protgraph \
      ~{files} \
      ~{arguments} \
      ~{if defined(num_of_entries) then ("--num_of_entries " +  '"' + num_of_entries + '"') else ""} \
      ~{if defined(exclude_accessions) then ("--exclude_accessions " +  '"' + exclude_accessions + '"') else ""} \
      ~{if defined(num_of_processes) then ("--num_of_processes " +  '"' + num_of_processes + '"') else ""} \
      ~{if defined(output_csv) then ("--output_csv " +  '"' + output_csv + '"') else ""} \
      ~{if (help_all) then "--help_all" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/protgraph:0.1.0--pyhdfd78af_0"
  }
  parameter_meta {
    num_of_entries: "Number of entries across all files (summed). if given,\\nit will an estimation of the runtime"
    exclude_accessions: "A csv file only containing accessions in the first row\\nwhich should be excluded for processsing. Setting this\\nvalue may reduce the reading performance and therefore\\nthe throughput performance overall."
    num_of_processes: "The number of processes used to process entries. Each\\nprocess can process an entry individually. The default\\nvalue is 'cores - 1', since one process is reserved\\nfor reading entries"
    output_csv: "Set the output file, which will contain information\\nabout the protein graphs (in csv) NOTE: It will write\\nto 'protein_graph_statistics.csv' and overwrite if\\nsuch a file exists. Default is set to the current\\nworking directory"
    help_all: "Show the complete help message for all possible"
    files: "Files containing the Swissprot/EMBL-Entries (either in\\n.dat or .txt)"
    arguments: "--help_graph_generation"
  }
  output {
    File out_stdout = stdout()
    File out_output_csv = "${in_output_csv}"
  }
}