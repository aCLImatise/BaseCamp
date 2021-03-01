version 1.0

task PickingUpIce2py {
  command <<<
    picking_up_ice2_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}