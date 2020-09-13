version 1.0

task NamotionReflectionxml {
  command <<<
    Namotion_Reflection_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}