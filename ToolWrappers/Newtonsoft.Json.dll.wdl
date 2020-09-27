version 1.0

task NewtonsoftJsondll {
  command <<<
    Newtonsoft_Json_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}