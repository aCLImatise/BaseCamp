version 1.0

task PickingUpIce2py {
  command <<<
    picking_up_ice2_py
  >>>
  output {
    File out_stdout = stdout()
  }
}