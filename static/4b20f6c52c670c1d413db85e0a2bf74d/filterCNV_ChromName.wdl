version 1.0

task FilterCNVChromName {
  input {
    String? cnvCnvRegionFile
    String? readReadCountFile
    String? chromChromName
  }
  command <<<
    filterCNV ChromName \
      ~{cnvCnvRegionFile} \
      ~{readReadCountFile} \
      ~{chromChromName}
  >>>
}