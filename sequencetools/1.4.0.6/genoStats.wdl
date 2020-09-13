version 1.0

task GenoStats {
  input {
    File? freq_sum
    File? eigen_strat_geno
    File? eigen_strat_snp
    File? eigen_strat_ind
  }
  command <<<
    genoStats \
      ~{if defined(freq_sum) then ("--freqsum " +  '"' + freq_sum + '"') else ""} \
      ~{if defined(eigen_strat_geno) then ("--eigenstratGeno " +  '"' + eigen_strat_geno + '"') else ""} \
      ~{if defined(eigen_strat_snp) then ("--eigenstratSnp " +  '"' + eigen_strat_snp + '"') else ""} \
      ~{if defined(eigen_strat_ind) then ("--eigenstratInd " +  '"' + eigen_strat_ind + '"') else ""}
  >>>
  parameter_meta {
    freq_sum: "a freqsum file to read as input. Use - to read from\\nstdin (the default) (default: \\\"-\\\")"
    eigen_strat_geno: "Eigenstrat Geno File"
    eigen_strat_snp: "Eigenstrat Snp File"
    eigen_strat_ind: "Eigenstrat Ind File\\n"
  }
  output {
    File out_stdout = stdout()
  }
}