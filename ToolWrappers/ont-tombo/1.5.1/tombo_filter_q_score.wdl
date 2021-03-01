version 1.0

task TomboFilterQScore {
  input {
    Array[Int] fast_five_based_irs
    Float? q_score
    Int? corrected_group
    Int? base_call_group
    Boolean? quiet
  }
  command <<<
    tombo filter q_score \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(q_score) then ("--q-score " +  '"' + q_score + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_group) then ("--basecall-group " +  '"' + base_call_group + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    q_score: "Q-score threshold for filtering low quality reads.\\nDefault: 7.000000"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_group: "FAST5 group obtain original basecalls (under Analyses\\ngroup). Default: Basecall_1D_000"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}