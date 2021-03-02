version 1.0

task Rankpl {
  input {
    Int? precision
    Boolean? returns_count_ngrams
    Int source_file_one
    Int source_file_two
  }
  command <<<
    rank_pl \
      ~{source_file_one} \
      ~{source_file_two} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if (returns_count_ngrams) then "--N" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    precision: "Rounds coefficient to N places (default = 4)"
    returns_count_ngrams: "Returns count of ngrams in common between files"
    source_file_one: ""
    source_file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}