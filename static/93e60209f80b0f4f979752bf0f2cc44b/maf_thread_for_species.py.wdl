version 1.0

task MafThreadForSpeciespy {
  input {
    Boolean? no_fuse
    Int species_two
  }
  command <<<
    maf_thread_for_species_py \
      ~{species_two} \
      ~{if (no_fuse) then "--nofuse" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_fuse: "Don't attempt to join blocks, just remove rows."
    species_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}