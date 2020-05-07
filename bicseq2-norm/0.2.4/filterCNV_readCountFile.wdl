version 1.0

task FilterCNVReadCountFile {
  input {
    String? cnvCnvRegionFile
    String? readReadCountFile
    String? chromChromName
  }
  command <<<
    filterCNV readCountFile \
      ~{cnvCnvRegionFile} \
      ~{readReadCountFile} \
      ~{chromChromName}
  >>>
}