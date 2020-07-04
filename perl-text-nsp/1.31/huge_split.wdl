version 1.0

task HugeSplit.pl {
  input {
    String? split
    String source
  }
  command <<<
    huge-split.pl \
      ~{source} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""}
  >>>
  parameter_meta {
    split: "Split the bigram file into smaller files. Every  smaller file contains N bigrams. N must be an integer. "
    source: ""
  }
}