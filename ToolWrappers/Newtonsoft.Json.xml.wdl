version 1.0

task NewtonsoftJsonxml {
  command <<<
    Newtonsoft_Json_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}