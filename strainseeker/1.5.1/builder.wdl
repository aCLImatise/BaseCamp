version 1.0

task Builder.pl {
  input {
    Boolean newickNewick
    Boolean dirDir
    Boolean outputOutput
    Boolean blacklistBlacklist
    Boolean wordWord
    Boolean minMin
    Boolean greaterGreater
    Boolean threadsThreads
    Boolean maxMax
  }
  command <<<
    builder.pl \
      ~{true="--newick" false="" newickNewick} \
      ~{true="--dir" false="" dirDir} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--blacklist" false="" blacklistBlacklist} \
      ~{true="--word" false="" wordWord} \
      ~{true="--min" false="" minMin} \
      ~{true="--greater" false="" greaterGreater} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-max" false="" maxMax}
  >>>
}