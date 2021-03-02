version 1.0

task MmseqsProfile2cs {
  input {
    Boolean? pc_a
    Boolean? pcb
    File? sub_mat
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs profile2cs \
      ~{if (pc_a) then "--pca" else ""} \
      ~{if (pcb) then "--pcb" else ""} \
      ~{if (sub_mat) then "--sub-mat" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pc_a: "1.000           pseudo count admixture strength"
    pcb: "1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)"
    sub_mat: "blosum62.out    amino acid substitution matrix file"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}