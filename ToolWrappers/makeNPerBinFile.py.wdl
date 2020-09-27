version 1.0

task MakeNPerBinFilepy {
  input {
    String? remove_adjacent
    Int? remove_b_two_b
    Int? binsize
    Int? max_l_brown_est
    Int? max_fra_glen
    Int? m_infra_glen
  }
  command <<<
    makeNPerBinFile_py \
      ~{if defined(remove_adjacent) then ("--removeAdjacent " +  '"' + remove_adjacent + '"') else ""} \
      ~{if defined(remove_b_two_b) then ("--removeb2b " +  '"' + remove_b_two_b + '"') else ""} \
      ~{if defined(binsize) then ("--binsize " +  '"' + binsize + '"') else ""} \
      ~{if defined(max_l_brown_est) then ("--maxLBrownEst " +  '"' + max_l_brown_est + '"') else ""} \
      ~{if defined(max_fra_glen) then ("--maxFragLen " +  '"' + max_fra_glen + '"') else ""} \
      ~{if defined(m_infra_glen) then ("--minFragLen " +  '"' + m_infra_glen + '"') else ""}
  >>>
  parameter_meta {
    remove_adjacent: ""
    remove_b_two_b: ""
    binsize: ""
    max_l_brown_est: ""
    max_fra_glen: ""
    m_infra_glen: ""
  }
  output {
    File out_stdout = stdout()
  }
}