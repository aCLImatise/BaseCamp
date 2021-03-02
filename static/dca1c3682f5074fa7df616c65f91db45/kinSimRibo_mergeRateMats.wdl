version 1.0

task KinSimRiboMergeRateMats {
  input {
    Boolean? factors_multiply_matrix
    Boolean? allow_check_are
    String connected_dot
  }
  command <<<
    kinSimRibo_mergeRateMats \
      ~{connected_dot} \
      ~{if (factors_multiply_matrix) then "-A" else ""} \
      ~{if (allow_check_are) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    factors_multiply_matrix: ":\\nFactors to multiply the output matrix with, e.g. to account for\\nthe pre-exponential factors of the Arrhenius equation. The\\ncoefficients are applyed to different parts of the matrix as\\nfollows:\\n.-      -.  where A is multiplied with the monomer rates, B with\\n|  A  C  |  the dimer rates, C with the monomer-dimer\\n|        |  (dimerization) rates, and D with the dimer-monomer\\n|  D  B  |  (dissociation) rates.\\n`-      -´"
    allow_check_are: ":     Allow disconnected matrix / do not check whether A and B are"
    connected_dot: "-v:     Be verbose"
  }
  output {
    File out_stdout = stdout()
  }
}