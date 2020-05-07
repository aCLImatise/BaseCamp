version 1.0

task Hmmer2filteredBest.py {
  input {
    String outOutExclF
    String outOutFiltF
  }
  command <<<
    hmmer2filtered_best.py \
      ~{if defined(outOutExclF) then ("--out_excl_f " +  '"' + outOutExclF + '"') else ""} \
      ~{if defined(outOutFiltF) then ("--out_filt_f " +  '"' + outOutFiltF + '"') else ""}
  >>>
}