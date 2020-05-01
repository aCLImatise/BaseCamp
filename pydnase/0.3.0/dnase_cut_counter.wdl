version 1.0

task DnaseCutCounter.py {
  input {
    Boolean aA
  }
  command <<<
    dnase_cut_counter.py \
      ~{true="-A" false="" aA}
  >>>
}