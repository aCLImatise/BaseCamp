version 1.0

task SketchyFeatureLineage {
  input {
    File? data
    String? lineage
    File? var_output
    Boolean? summary
    File? file_path
    String? pattern
    File? key
    Boolean? re_index
  }
  command <<<
    sketchy feature lineage \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(lineage) then ("--lineage " +  '"' + lineage + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{true="--summary" false="" summary} \
      ~{if defined(file_path) then ("--file_path " +  '"' + file_path + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{true="--reindex" false="" re_index}
  >>>
  parameter_meta {
    data: "Path to data file to summarize trait data from [required]  [required]"
    lineage: "Trait to show summary for; columns in data file [required]"
    var_output: "Path to legacy key file to extract identifiers [lineage.index.tsv]"
    summary: "Print summary of lineage features to terminal [false]"
    file_path: "Path to collect files for this lineage from [none]"
    pattern: "Pattern to match files with their name identifier [*.fastq.gz]"
    key: "Path to legacy key file to extract identifiers [none]"
    re_index: "Reindex the lineage table [none]"
  }
}