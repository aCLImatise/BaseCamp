version 1.0

task Hugesplitpl {
  input {
    Int? split
    String source
  }
  command <<<
    huge_split_pl \
      ~{source} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    split: "Split the bigram file into smaller files. Every\\nsmaller file contains N bigrams. N must be an integer."
    source: ""
  }
  output {
    File out_stdout = stdout()
  }
}