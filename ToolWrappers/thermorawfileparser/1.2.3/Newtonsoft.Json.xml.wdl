version 1.0

task NewtonsoftJsonxml {
  command <<<
    Newtonsoft_Json_xml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}