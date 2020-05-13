version 1.0

task CopySnppipelineData.py {
  input {
    String? whichWhichData
    String? destDestDirectory
  }
  command <<<
    copy_snppipeline_data.py \
      ~{whichWhichData} \
      ~{destDestDirectory}
  >>>
}