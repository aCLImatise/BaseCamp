version 1.0

task Hmmer2filteredBest.py {
  input {
    String? out_excl_f
    String? out_filt_f
    String parse
    String hmmer
    String var_output
    File var_5
    String and
    String generated
    String filtered
    String best
    File var_10
  }
  command <<<
    hmmer2filtered_best.py \
      ~{parse} \
      ~{hmmer} \
      ~{var_output} \
      ~{var_5} \
      ~{and} \
      ~{generated} \
      ~{filtered} \
      ~{best} \
      ~{var_10} \
      ~{if defined(out_excl_f) then ("--out_excl_f " +  '"' + out_excl_f + '"') else ""} \
      ~{if defined(out_filt_f) then ("--out_filt_f " +  '"' + out_filt_f + '"') else ""}
  >>>
  parameter_meta {
    out_excl_f: "domain hits filtered due to the applied thresholds"
    out_filt_f: "hmmer tab delimited file with hits removed according to the thresholds"
    parse: ""
    hmmer: ""
    var_output: ""
    var_5: ""
    and: ""
    generated: ""
    filtered: ""
    best: ""
    var_10: ""
  }
}