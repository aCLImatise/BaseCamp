version 1.0

task GetgffinfoMongodb {
  input {
    Boolean? verbose
    String? gff_file
    String? output_file
  }
  command <<<
    get_gff_info mongodb \
      ~{gff_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-t, --taxonomy FILENAME  Taxonomy used to populate the lineage\\n-c, --no-cache           No cache for the lineage function\\n-i, --indent INTEGER     If used, the json will be written in a human\\nreadble form\\n--progress               Shows Progress Bar\\n--help                   Show this message and exit.\\n"
    gff_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}