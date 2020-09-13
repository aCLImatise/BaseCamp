version 1.0

task DiffieHellmandll {
  command <<<
    DiffieHellman_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}