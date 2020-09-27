version 1.0

task ChakinPhylogenyLoadTree {
  input {
    File? name
    String? xref_db
    String? xref_accession
    Boolean? match_on_name
    String? prefix
    String newick
    String analysis_id
  }
  command <<<
    chakin phylogeny load_tree \
      ~{newick} \
      ~{analysis_id} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(xref_db) then ("--xref_db " +  '"' + xref_db + '"') else ""} \
      ~{if defined(xref_accession) then ("--xref_accession " +  '"' + xref_accession + '"') else ""} \
      ~{if (match_on_name) then "--match_on_name" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    name: "The name given to the phylotree entry in the database\\n(default=<filename>)"
    xref_db: "The name of the db to link dbxrefs for the trees\\n(default: \\\"null\\\")  [default: null]"
    xref_accession: "The accession to use for dbxrefs for the trees\\n(assumed same as name unless otherwise specified)"
    match_on_name: "Match polypeptide features using their name instead\\nof their uniquename"
    prefix: "Comma-separated list of prefix to be removed from\\nidentifiers (e.g species prefixes when loading\\nOrthoFinder output)"
    newick: ""
    analysis_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}