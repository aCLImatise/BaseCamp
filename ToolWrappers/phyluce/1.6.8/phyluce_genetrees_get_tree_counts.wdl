version 1.0

task PhyluceGenetreesGetTreeCounts {
  input {
    Boolean? var_0
    String? extension
    File? trees
    String? schema
    Array[String] exclude
    String var_5
  }
  command <<<
    phyluce_genetrees_get_tree_counts \
      ~{var_5} \
      ~{if (var_0) then "--locus-support-output" else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(trees) then ("--trees " +  '"' + trees + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    extension: ""
    trees: "Tree file"
    schema: "The scheme of the input data"
    exclude: "Loci to exclude\\n"
    var_5: "[--schema {nexus,newick,nexml,fasta,phylip}]"
  }
  output {
    File out_stdout = stdout()
  }
}