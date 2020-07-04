version 1.0

task MmseqsSequence2profile {
  input {
    Boolean? pc_a
    Boolean? pcb
    Boolean? neff
    Boolean? tau
    Boolean? threads
    Boolean? sub_mat
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs sequence2profile \
      ~{true="--pca" false="" pc_a} \
      ~{true="--pcb" false="" pcb} \
      ~{true="--neff" false="" neff} \
      ~{true="--tau" false="" tau} \
      ~{true="--threads" false="" threads} \
      ~{true="--sub-mat" false="" sub_mat} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    pc_a: "1.000           pseudo count admixture strength                             "
    pcb: "1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)"
    neff: "1.000           Neff included into context state profile (1.0,20.0)         "
    tau: "0.900           Tau: context state pseudo count mixture (0.0,1.0)           "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    sub_mat: "blosum62.out    amino acid substitution matrix file                         "
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}