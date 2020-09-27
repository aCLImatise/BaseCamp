version 1.0

task PhyluceGenetreesGetMeanBootrepSupport {
  input {
    File? trees
    File? config
    String? schema
    String? root
  }
  command <<<
    phyluce_genetrees_get_mean_bootrep_support \
      ~{if defined(trees) then ("--trees " +  '"' + trees + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""}
  >>>
  parameter_meta {
    trees: "Tree file"
    config: "config file"
    schema: "The scheme of the input data"
    root: "The taxon on which to root trees"
  }
  output {
    File out_stdout = stdout()
  }
}