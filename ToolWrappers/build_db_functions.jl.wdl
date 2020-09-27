version 1.0

task BuildDbFunctionsjl {
  command <<<
    build_db_functions_jl
  >>>
  output {
    File out_stdout = stdout()
  }
}