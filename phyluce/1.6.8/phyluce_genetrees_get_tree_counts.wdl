version 1.0

task PhyluceGenetreesGetTreeCounts {
  input {
    String? trees
    String? locus_support_output
    String? schema
    String? root
    String? extension
    Array[String] exclude
  }
  command <<<
    phyluce_genetrees_get_tree_counts \
      ~{if defined(trees) then ("--trees " +  '"' + trees + '"') else ""} \
      ~{if defined(locus_support_output) then ("--locus-support-output " +  '"' + locus_support_output + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""}
  >>>
  parameter_meta {
    trees: "Tree file"
    locus_support_output: "The output file in which to store trees and their associated loci (config format)"
    schema: "The scheme of the input data"
    root: "The taxon on which to root trees"
    extension: "File extension used with each 'best' tree"
    exclude: "Loci to exclude"
  }
}