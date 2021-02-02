version 1.0

task TreebestMmerge {
  input {
    Boolean? reroot
    File? species_tree
  }
  command <<<
    treebest mmerge \
      ~{if (reroot) then "-r" else ""} \
      ~{if defined(species_tree) then ("-s " +  '"' + species_tree + '"') else ""}
  >>>
  parameter_meta {
    reroot: "reroot"
    species_tree: "species tree [default taxa tree]"
  }
  output {
    File out_stdout = stdout()
  }
}