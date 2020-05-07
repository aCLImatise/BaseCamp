version 1.0

task FilterCNVCnvRegionFileChromName {
  input {
    String? readReadCountFile
    String? chromChromName
  }
  command <<<
    filterCNV cnvRegionFile ChromName \
      ~{readReadCountFile} \
      ~{chromChromName}
  >>>
}