version 1.0

task Clustalw2phylip {
  input {
    String? clustalwClustalw2phyilip
    String? clustalwClustalwFile
  }
  command <<<
    clustalw2phylip \
      ~{clustalwClustalw2phyilip} \
      ~{clustalwClustalwFile}
  >>>
}