version 1.0

task PybelManageNetworks {
  input {
    String drop
    String ls
  }
  command <<<
    pybel manage networks \
      ~{drop} \
      ~{ls}
  >>>
  parameter_meta {
    drop: "Drop a network by its identifier or drop all networks."
    ls: "List network names, versions, and optionally, descriptions."
  }
  output {
    File out_stdout = stdout()
  }
}