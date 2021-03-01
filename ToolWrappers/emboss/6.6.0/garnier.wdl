version 1.0

task Garnier {
  input {
    Boolean? idc
  }
  command <<<
    garnier \
      ~{if (idc) then "-idc" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    idc: "integer    [0] In their paper, GOR mention that if you\\nknow something about the secondary structure\\ncontent of the protein you are analyzing,\\nyou can do better in prediction. 'idc' is an\\nindex into a set of arrays, dharr[] and\\ndsarr[], which provide 'decision constants'\\n(dch, dcs), which are offsets that are\\napplied to the weights for the helix and\\nsheet (extend) terms. So, idc=0 says don't\\nuse the decision constant offsets, and idc=1\\nto 6 indicates that various combinations of\\ndch,dcs offsets should be used. (Integer\\nfrom 0 to 6)"
  }
  output {
    File out_stdout = stdout()
  }
}