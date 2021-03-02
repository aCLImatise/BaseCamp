version 1.0

task TripailleAnalysisLoadGo {
  input {
    String? organism
    Int? organism_id
    Directory? gaf_ext
    String? query_type
    String? query_matching
    String? method
    Int? name_column
    File? re_name
    Boolean? no_wait
    String? algorithm
    String? source_version
    String? source_uri
    String? description
    String? date_executed
    String name
    String program
    String program_version
  }
  command <<<
    tripaille analysis load_go \
      ~{name} \
      ~{program} \
      ~{program_version} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(organism_id) then ("--organism_id " +  '"' + organism_id + '"') else ""} \
      ~{if defined(gaf_ext) then ("--gaf_ext " +  '"' + gaf_ext + '"') else ""} \
      ~{if defined(query_type) then ("--query_type " +  '"' + query_type + '"') else ""} \
      ~{if defined(query_matching) then ("--query_matching " +  '"' + query_matching + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(name_column) then ("--name_column " +  '"' + name_column + '"') else ""} \
      ~{if defined(re_name) then ("--re_name " +  '"' + re_name + '"') else ""} \
      ~{if (no_wait) then "--no_wait" else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(source_version) then ("--sourceversion " +  '"' + source_version + '"') else ""} \
      ~{if defined(source_uri) then ("--sourceuri " +  '"' + source_uri + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(date_executed) then ("--date_executed " +  '"' + date_executed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    organism: "Organism common name or abbreviation"
    organism_id: "Organism ID"
    gaf_ext: "If looking for files in a directory, extension of the\\nGAF files"
    query_type: "The feature type (e.g. 'gene', 'mRNA', 'contig') of\\nthe query. It must be a valid Sequence Ontology term."
    query_matching: "Method to match identifiers to features in the\\ndatabase. ('name', 'uniquename' or 'dbxref')\\n[default: uniquename]"
    method: "Import method ('add' or 'remove')  [default: add]"
    name_column: "Column containing the feature identifiers (2, 3, 10\\nor 11; default=2).  [default: 2]"
    re_name: "Regular expression to extract the feature name from\\nGAF file."
    no_wait: "Do not wait for job to complete"
    algorithm: "analysis algorithm"
    source_version: "analysis sourceversion"
    source_uri: "analysis sourceuri"
    description: "analysis description"
    date_executed: "analysis date_executed (yyyy-mm-dd)"
    name: ""
    program: ""
    program_version: ""
  }
  output {
    File out_stdout = stdout()
  }
}