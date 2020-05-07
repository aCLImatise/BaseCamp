version 1.0

task FilterCNVCnvRegionFileReadCountFile {
  input {
    String? chromChromName
  }
  command <<<
    filterCNV cnvRegionFile readCountFile \
      ~{chromChromName}
  >>>
}