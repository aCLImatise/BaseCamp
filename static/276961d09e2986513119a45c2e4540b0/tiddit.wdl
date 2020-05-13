version 1.0

task Tiddit {
  input {
    Boolean svSv
    Boolean covCov
    String? tiddTiddIt2110
  }
  command <<<
    tiddit \
      ~{tiddTiddIt2110} \
      ~{true="--sv" false="" svSv} \
      ~{true="--cov" false="" covCov}
  >>>
}