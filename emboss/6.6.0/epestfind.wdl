version 1.0

task Epestfind {
  input {
    Boolean? window
    Boolean? order
  }
  command <<<
    epestfind \
      ~{true="-window" false="" window} \
      ~{true="-order" false="" order}
  >>>
  parameter_meta {
    window: "integer    [10] Minimal distance between positively charged amino acids. (Integer 2 or more)"
    order: "selection  [score] Name of the output file which holds the results of the analysis. Results may be sorted by length, position and score."
  }
}