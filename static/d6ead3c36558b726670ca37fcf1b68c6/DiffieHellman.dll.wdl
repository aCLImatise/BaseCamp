version 1.0

task DiffieHellmandll {
  command <<<
    DiffieHellman_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}