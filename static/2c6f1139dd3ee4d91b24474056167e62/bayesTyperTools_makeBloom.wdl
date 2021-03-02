version 1.0

task BayesTyperToolsMakeBloom {
  input {
    Boolean? arg_kmc_kmer
    Boolean? arg_number_threads
    Float? false_positive_rate
  }
  command <<<
    bayesTyperTools makeBloom \
      ~{if (arg_kmc_kmer) then "-k" else ""} \
      ~{if (arg_number_threads) then "-p" else ""} \
      ~{if defined(false_positive_rate) then ("--false-positive-rate " +  '"' + false_positive_rate + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_kmc_kmer: "[ --kmc-table-prefix ] arg       KMC kmer table prefix. Output is written as <kmc-table-prefix>.bloomMeta and <kmc-table-prefix>.bloomData."
    arg_number_threads: "[ --num-threads ] arg (=1)       number of threads used (+= 1 I/O thread)."
    false_positive_rate: "(=0.001)  bloom filter false positive rate."
  }
  output {
    File out_stdout = stdout()
  }
}