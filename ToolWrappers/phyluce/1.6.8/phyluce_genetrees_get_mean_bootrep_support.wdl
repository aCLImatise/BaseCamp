version 1.0

task PhyluceGenetreesGetMeanBootrepSupport {
  input {
    File? trees
    File? config_file
    String? schema
    String? root
    String var_4
  }
  command <<<
    phyluce_genetrees_get_mean_bootrep_support \
      ~{var_4} \
      ~{if defined(trees) then ("--trees " +  '"' + trees + '"') else ""} \
      ~{if defined(config_file) then ("--config " +  '"' + config_file + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    trees: "Tree file"
    config_file: "config file"
    schema: "The scheme of the input data"
    root: "The taxon on which to root trees"
    var_4: "[--schema {nexus,newick,nexml,fasta,phylip}]"
  }
  output {
    File out_stdout = stdout()
  }
}