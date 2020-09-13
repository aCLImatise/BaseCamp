version 1.0

task PhyluceGenetreesGetMeanBootrepSupport {
  input {
    String? root
    File? trees
    File? config_file
    String? schema
    String var_4
  }
  command <<<
    phyluce_genetrees_get_mean_bootrep_support \
      ~{var_4} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(trees) then ("--trees " +  '"' + trees + '"') else ""} \
      ~{if defined(config_file) then ("--config " +  '"' + config_file + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""}
  >>>
  parameter_meta {
    root: ""
    trees: "Tree file"
    config_file: "config file"
    schema: "The scheme of the input data"
    var_4: "[--schema {nexus,newick,nexml,fasta,phylip}]"
  }
  output {
    File out_stdout = stdout()
  }
}