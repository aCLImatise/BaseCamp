version 1.0

task CondenseWorkflowpy {
  input {
    File? assigned_taxonomy_fn
    String? rep_set_fn
    String? seqs_otus_fn
    String? phylogenetic_level
  }
  command <<<
    condense_workflow_py \
      ~{if defined(assigned_taxonomy_fn) then ("--assigned_taxonomy_fn " +  '"' + assigned_taxonomy_fn + '"') else ""} \
      ~{if defined(rep_set_fn) then ("--rep_set_fn " +  '"' + rep_set_fn + '"') else ""} \
      ~{if defined(seqs_otus_fn) then ("--seqs_otus_fn " +  '"' + seqs_otus_fn + '"') else ""} \
      ~{if defined(phylogenetic_level) then ("--phylogenetic_level " +  '"' + phylogenetic_level + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assigned_taxonomy_fn: "The taxonomy file output by the assign_taxonomy\\nscript."
    rep_set_fn: "The set of representative sequences."
    seqs_otus_fn: "The list of OTU IDs and their associated sequence IDs."
    phylogenetic_level: "Set the phylogenetic level at which to define OTUs for\\ncondensing and downstream processing. Defaults to\\nspecies level."
  }
  output {
    File out_stdout = stdout()
    File out_assigned_taxonomy_fn = "${in_assigned_taxonomy_fn}"
  }
}