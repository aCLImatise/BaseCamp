version 1.0

task GromacsActivatesh {
  command <<<
    gromacs_activate_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}