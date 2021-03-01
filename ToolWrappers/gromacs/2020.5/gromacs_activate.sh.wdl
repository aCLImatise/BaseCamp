version 1.0

task GromacsActivatesh {
  command <<<
    gromacs_activate_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/gromacs:2020.5--h3ddc34e_1"
  }
  output {
    File out_stdout = stdout()
  }
}