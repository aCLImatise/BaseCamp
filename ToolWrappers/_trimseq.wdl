version 1.0

task Trimseq {
  input {
    Boolean? window
    Boolean? percent
    Boolean? strict
    Boolean? star
  }
  command <<<
    _trimseq \
      ~{if (window) then "-window" else ""} \
      ~{if (percent) then "-percent" else ""} \
      ~{if (strict) then "-strict" else ""} \
      ~{if (star) then "-star" else ""}
  >>>
  parameter_meta {
    window: "integer    [1] This determines the size of the region\\nthat is considered when deciding whether the\\npercentage of ambiguity is greater than the\\nthreshold. A value of 5 means that a region\\nof 5 letters in the sequence is shifted\\nalong the sequence from the ends and\\ntrimming is done only if there is a greater\\nor equal percentage of ambiguity than the\\nthreshold percentage. (Integer 1 or more)"
    percent: "float      [100.0] This is the threshold of the\\npercentage ambiguity in the window required\\nin order to trim a sequence. (Any numeric\\nvalue)"
    strict: "boolean    [N] In nucleic sequences, trim off not only\\nN's and X's, but also the nucleotide IUPAC\\nambiguity codes M, R, W, S, Y, K, V, H, D\\nand B. In protein sequences, trim off not\\nonly X's but also B and Z."
    star: "boolean    [N] In protein sequences, trim off not only\\nX's, but also the *'s"
  }
  output {
    File out_stdout = stdout()
  }
}