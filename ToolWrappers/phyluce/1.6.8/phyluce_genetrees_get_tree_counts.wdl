version 1.0

task PhyluceGenetreesGetTreeCounts {
  input {
    File? trees
    File? output_file_store
    String? schema
    String? root
    File? extension
    Array[String] exclude
    String var_6
  }
  command <<<
    phyluce_genetrees_get_tree_counts \
      ~{var_6} \
      ~{if defined(trees) then ("--trees " +  '"' + trees + '"') else ""} \
      ~{if defined(output_file_store) then ("--locus-support-output " +  '"' + output_file_store + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    trees: "Tree file"
    output_file_store: "The output file in which to store trees and their\\nassociated loci (config format)"
    schema: "The scheme of the input data"
    root: "The taxon on which to root trees"
    extension: "File extension used with each 'best' tree"
    exclude: "Loci to exclude\\n"
    var_6: "[--schema {nexus,newick,nexml,fasta,phylip}]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_store = "${in_output_file_store}"
  }
}