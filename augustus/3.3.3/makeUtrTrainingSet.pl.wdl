version 1.0

task MakeUtrTrainingSetpl {
  input {
    Int? only_best
    Int? dist
  }
  command <<<
    makeUtrTrainingSet_pl \
      ~{if defined(only_best) then ("--onlybest " +  '"' + only_best + '"') else ""} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""}
  >>>
  parameter_meta {
    only_best: "for each stop/start codon only the 3'/5'-UTR from the most frequent splice variant"
    dist: "consider all alignments that start at most n bp downstream of stop codon/upstream of the start codon (default 0)"
  }
  output {
    File out_stdout = stdout()
  }
}