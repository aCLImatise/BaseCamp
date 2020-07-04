version 1.0

task Rank.pl {
  input {
    String? precision
    Boolean? returns_count_ngrams
    String source_file_one
    String source_file_two
  }
  command <<<
    rank.pl \
      ~{source_file_one} \
      ~{source_file_two} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{true="--N" false="" returns_count_ngrams}
  >>>
  parameter_meta {
    precision: "Rounds coefficient to N places (default = 4)"
    returns_count_ngrams: "Returns count of ngrams in common between files"
    source_file_one: ""
    source_file_two: ""
  }
}