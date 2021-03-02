version 1.0

task NewtonsoftJsondll {
  command <<<
    Newtonsoft_Json_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}