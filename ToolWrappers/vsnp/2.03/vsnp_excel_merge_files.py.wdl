version 1.0

task VsnpExcelMergeFilespy {
  command <<<
    vsnp_excel_merge_files_py
  >>>
  output {
    File out_stdout = stdout()
  }
}