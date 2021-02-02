version 1.0

task _init_py {
  command <<<
    __init___py
  >>>
  output {
    File out_stdout = stdout()
  }
}