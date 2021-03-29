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
    docker: "quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0"
  }
  parameter_meta {
    no_fuse: "Don't attempt to join blocks, just remove rows."
    species_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}