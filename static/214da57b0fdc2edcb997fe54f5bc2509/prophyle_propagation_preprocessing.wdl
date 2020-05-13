version 1.0

task ProphylePropagationPreprocessing.py {
  input {
    Float sS
    Boolean aA
    Boolean vV
    Boolean pP
  }
  command <<<
    prophyle_propagation_preprocessing.py \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-A" false="" aA} \
      ~{true="-V" false="" vV} \
      ~{true="-P" false="" pP}
  >>>
}