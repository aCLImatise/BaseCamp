version 1.0

task CallingFunctionsjl {
  command <<<
    calling_functions_jl
  >>>
  output {
    File out_stdout = stdout()
  }
}