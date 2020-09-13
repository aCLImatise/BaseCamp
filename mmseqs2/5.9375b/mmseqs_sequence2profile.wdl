version 1.0

task MmseqsSequence2profile {
  input {
    Boolean? pc_a
    Boolean? pcb
    Boolean? neff
    Boolean? tau
    Boolean? threads
    File? sub_mat
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs sequence2profile \
      ~{if (pc_a) then "--pca" else ""} \
      ~{if (pcb) then "--pcb" else ""} \
      ~{if (neff) then "--neff" else ""} \
      ~{if (tau) then "--tau" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (sub_mat) then "--sub-mat" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    pc_a: "1.000           pseudo count admixture strength"
    pcb: "1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)"
    neff: "1.000           Neff included into context state profile (1.0,20.0)"
    tau: "0.900           Tau: context state pseudo count mixture (0.0,1.0)"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    sub_mat: "blosum62.out    amino acid substitution matrix file"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}