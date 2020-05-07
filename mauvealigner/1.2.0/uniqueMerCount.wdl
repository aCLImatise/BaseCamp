version 1.0

task UniqueMerCount {
  input {
    String? sortedSortedMerList
  }
  command <<<
    uniqueMerCount \
      ~{sortedSortedMerList}
  >>>
}