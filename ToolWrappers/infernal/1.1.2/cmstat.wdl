version 1.0

task Cmstat {
  input {
    String? e
    String? p
    String? bit_score_threshold
    Int? set_database_size
    Boolean? cut_ga
    Boolean? cut_nc
    Boolean? cut_tc
    String? key
    Boolean? hmm_only
    Boolean? no_hmm_only
    Boolean? options
  }
  command <<<
    cmstat \
      ~{if defined(e) then ("-E " +  '"' + e + '"') else ""} \
      ~{if defined(p) then ("-P " +  '"' + p + '"') else ""} \
      ~{if defined(bit_score_threshold) then ("-T " +  '"' + bit_score_threshold + '"') else ""} \
      ~{if defined(set_database_size) then ("-Z " +  '"' + set_database_size + '"') else ""} \
      ~{if (cut_ga) then "--cut_ga" else ""} \
      ~{if (cut_nc) then "--cut_nc" else ""} \
      ~{if (cut_tc) then "--cut_tc" else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if (hmm_only) then "--hmmonly" else ""} \
      ~{if (no_hmm_only) then "--nohmmonly" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    e: ": print bit scores that correspond to E-value threshold of <x>"
    p: ": print bit scores that correspond to E-value threshold of <x>"
    bit_score_threshold: ": print E-values that correspond to bit score threshold of <x>"
    set_database_size: ": set database size in *Mb* to <x> for E-value calculations  [10]"
    cut_ga: ": print E-values that correspond to GA bit score thresholds"
    cut_nc: ": print E-values that correspond to NC bit score thresholds"
    cut_tc: ": print E-values that correspond to TC bit score thresholds"
    key: ": only print statistics for CM with name or accession <s>"
    hmm_only: ": print filter HMM bit scores/E-values, not CM ones"
    no_hmm_only: ": print CM bit scores/E-values, even for models with 0 basepairs"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}