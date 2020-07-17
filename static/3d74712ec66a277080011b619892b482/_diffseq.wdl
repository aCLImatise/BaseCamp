version 1.0

task _diffseq {
  input {
    Boolean? word_size
  }
  command <<<
    _diffseq \
      ~{true="-wordsize" false="" word_size}
  >>>
  parameter_meta {
    word_size: "integer    [10] The similar regions between the two sequences are found by creating a hash table of 'wordsize'd subsequences. 10 is a reasonable default. Making this value larger (20?) may speed up the program slightly, but will mean that any two differences within 'wordsize' of each other will be grouped as a single region of difference. This value may be made smaller (4?) to improve the resolution of nearby differences, but the program will go much slower. (Integer 2 or more)"
  }
}