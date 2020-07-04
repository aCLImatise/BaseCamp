version 1.0

task ArticMinion {
  input {
    Boolean? q
    Boolean? medaka
    Boolean? minimap_two
    Boolean? bwa
    String scheme
    String sample
  }
  command <<<
    artic minion \
      ~{scheme} \
      ~{sample} \
      ~{true="-q" false="" q} \
      ~{true="--medaka" false="" medaka} \
      ~{true="--minimap2" false="" minimap_two} \
      ~{true="--bwa" false="" bwa}
  >>>
  parameter_meta {
    q: ""
    medaka: ""
    minimap_two: ""
    bwa: ""
    scheme: "The name of the scheme."
    sample: "The name of the sample."
  }
}