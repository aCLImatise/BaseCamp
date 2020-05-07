version 1.0

task ParseMatchAnnot.py {
  input {
    Boolean notNotPBid
    Boolean parseParseFlCoverage
    String? faFaOrFq
    String? matchMatchFilename
  }
  command <<<
    parse_matchAnnot.py \
      ~{faFaOrFq} \
      ~{true="--not_pbid" false="" notNotPBid} \
      ~{true="--parse_FL_coverage" false="" parseParseFlCoverage} \
      ~{matchMatchFilename}
  >>>
}