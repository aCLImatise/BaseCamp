version 1.0

task Berokka {
  input {
    Boolean debugDebug
    Boolean checkCheck
    Boolean testTest
    Boolean forceForce
    Boolean outdirOutdir
    Boolean readReadLen
    Boolean fuzzFuzz
    Boolean keepKeepFiles
    Boolean noNoAnNo
    Boolean filterFilter
  }
  command <<<
    berokka \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--check" false="" checkCheck} \
      ~{true="--test" false="" testTest} \
      ~{true="--force" false="" forceForce} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{true="--readlen" false="" readReadLen} \
      ~{true="--fuzz" false="" fuzzFuzz} \
      ~{true="--keepfiles" false="" keepKeepFiles} \
      ~{true="--noanno" false="" noNoAnNo} \
      ~{true="--filter" false="" filterFilter}
  >>>
}