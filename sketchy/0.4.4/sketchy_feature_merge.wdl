version 1.0

task SketchyFeatureMerge {
  input {
    File? sketch
    File? features
    File? key
    String? index_column
    String? mash_column
    String? prefix
    Boolean? verbose
  }
  command <<<
    sketchy feature merge \
      ~{if defined(sketch) then ("--sketch " +  '"' + sketch + '"') else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(index_column) then ("--index_column " +  '"' + index_column + '"') else ""} \
      ~{if defined(mash_column) then ("--mash_column " +  '"' + mash_column + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    sketch: "Path to sketch file to parse indices from [required]"
    features: "Path to genotype feature file to merge indices with sketch  [required]"
    key: "Legacy key file to translate UUIDs [dep.]"
    index_column: "Feature index column to merge indices on [idx]"
    mash_column: "Mash index column to merge indices on [ids]"
    prefix: "Prefix for output file: {prefix}.tsv [sketchy]"
    verbose: "Enable verbose output for merge operations"
  }
}