version 1.0

task PhyluceGenetreesGetTreeCounts {
  input {
    Boolean? locus_support_output
    File? trees
    String? schema
    String? root
    File? extension
    Array[String] exclude
  }
  command <<<
    phyluce_genetrees_get_tree_counts \
      ~{if (locus_support_output) then "--locus-support-output" else ""} \
      ~{if defined(trees) then ("--trees " +  '"' + trees + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""}
  >>>
  parameter_meta {
    locus_support_output: "LOCUS_SUPPORT_OUTPUT\\n[--schema {nexus,newick,nexml,fasta,phylip}]\\n--root ROOT --extension EXTENSION\\n[--exclude EXCLUDE [EXCLUDE ...]]"
    trees: "Tree file"
    schema: "The scheme of the input data"
    root: "The taxon on which to root trees"
    extension: "File extension used with each 'best' tree"
    exclude: "Loci to exclude\\n"
  }
  output {
    File out_stdout = stdout()
  }
}