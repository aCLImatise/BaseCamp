version 1.0

task Gensub2 {
  input {
    String groupGroup1
    String groupGroup2
    File? fileFileList1
    File? fileFileList2
    String? templateTemplateFile
    String? outputOutputFile
  }
  command <<<
    gensub2 \
      ~{fileFileList1} \
      ~{if defined(groupGroup1) then ("-group1 " +  '"' + groupGroup1 + '"') else ""} \
      ~{if defined(groupGroup2) then ("-group2 " +  '"' + groupGroup2 + '"') else ""} \
      ~{fileFileList2} \
      ~{templateTemplateFile} \
      ~{outputOutputFile}
  >>>
}