version 1.0

task MakeNBaitsPerBinFilepy {
  input {
    String? remove_adjacent
    Int? binsize
    Int? max_l_brown_est
  }
  command <<<
    makeNBaitsPerBinFile_py \
      ~{if defined(remove_adjacent) then ("--removeAdjacent " +  '"' + remove_adjacent + '"') else ""} \
      ~{if defined(binsize) then ("--binsize " +  '"' + binsize + '"') else ""} \
      ~{if defined(max_l_brown_est) then ("--maxLBrownEst " +  '"' + max_l_brown_est + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    remove_adjacent: ""
    binsize: ""
    max_l_brown_est: ""
  }
  output {
    File out_stdout = stdout()
  }
}