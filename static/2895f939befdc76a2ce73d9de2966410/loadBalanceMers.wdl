version 1.0

task LoadBalanceMers.plNumOfPrefixBlocks {
  input {
    String? merMerCountFile
    String? numNumOfPrefixBlocks
  }
  command <<<
    loadBalanceMers.pl num_of_prefix_blocks \
      ~{merMerCountFile} \
      ~{numNumOfPrefixBlocks}
  >>>
}