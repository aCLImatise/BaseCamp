version 1.0

task Diffseq {
  input {
    Boolean? word_size
    Boolean? global_differences
  }
  command <<<
    diffseq \
      ~{if (word_size) then "-wordsize" else ""} \
      ~{if (global_differences) then "-globaldifferences" else ""}
  >>>
  parameter_meta {
    word_size: "integer    [10] The similar regions between the two\\nsequences are found by creating a hash table\\nof 'wordsize'd subsequences. 10 is a\\nreasonable default. Making this value larger\\n(20?) may speed up the program slightly,\\nbut will mean that any two differences\\nwithin 'wordsize' of each other will be\\ngrouped as a single region of difference.\\nThis value may be made smaller (4?) to\\nimprove the resolution of nearby\\ndifferences, but the program will go much\\nslower. (Integer 2 or more)"
    global_differences: "boolean    [N] Normally this program will find regions\\nof identity that are the length of the\\nspecified word-size or greater and will then\\nreport the regions of difference between\\nthese matching regions. This works well and\\nis what most people want if they are working\\nwith long overlapping nucleic acid\\nsequences. You are usually not interested in\\nthe non-overlapping ends of these\\nsequences. If you have protein sequences or\\nshort RNA sequences however, you will be\\ninterested in differences at the very ends .\\nIt this option is set to be true then the\\ndifferences at the ends will also be\\nreported."
  }
  output {
    File out_stdout = stdout()
  }
}