version 1.0

task SketchyFeatureLineage {
  input {
    File? data
    File? lineage
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
      ~{if (summary) then "--summary" else ""} \
      ~{if defined(file_path) then ("--file_path " +  '"' + file_path + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if (re_index) then "--reindex" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0"
  }
  parameter_meta {
    data: "Path to data file to summarize trait data from\\n[required]  [required]"
    lineage: "Trait to show summary for; columns in data file\\n[required]"
    var_output: "Path to legacy key file to extract identifiers\\n[lineage.index.tsv]"
    summary: "Print summary of lineage features to terminal [false]"
    file_path: "Path to collect files for this lineage from [none]"
    pattern: "Pattern to match files with their name identifier\\n[*.fastq.gz]"
    key: "Path to legacy key file to extract identifiers [none]"
    re_index: "Reindex the lineage table [none]"
  }
  output {
    File out_stdout = stdout()
  }
}