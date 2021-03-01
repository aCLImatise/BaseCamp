version 1.0

task SketchyFeatureMerge {
  input {
    File? path_sketch_file
    File? features
    File? key
    String? index_column
    String? mash_column
    File? prefix
    Boolean? verbose
    String var_7
  }
  command <<<
    sketchy feature merge \
      ~{var_7} \
      ~{if defined(path_sketch_file) then ("--sketch " +  '"' + path_sketch_file + '"') else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(index_column) then ("--index_column " +  '"' + index_column + '"') else ""} \
      ~{if defined(mash_column) then ("--mash_column " +  '"' + mash_column + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0"
  }
  parameter_meta {
    path_sketch_file: "Path to sketch file to parse indices from\\n[required]"
    features: "Path to genotype feature file to merge indices with"
    key: "Legacy key file to translate UUIDs [dep.]"
    index_column: "Feature index column to merge indices on [idx]"
    mash_column: "Mash index column to merge indices on [ids]"
    prefix: "Prefix for output file: {prefix}.tsv [sketchy]"
    verbose: "Enable verbose output for merge operations"
    var_7: "[required]"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}