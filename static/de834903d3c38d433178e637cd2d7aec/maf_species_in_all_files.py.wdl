version 1.0

task MafSpeciesInAllFilespy {
  command <<<
    maf_species_in_all_files_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0"
  }
  output {
    File out_stdout = stdout()
  }
}