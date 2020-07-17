version 1.0

task MmseqsResult2stats {
  input {
    Boolean? stat
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs result2stats \
      ~{true="--stat" false="" stat} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    stat: "can be one of: linecount, mean, doolittle, charges, seqlen, firstline."
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}