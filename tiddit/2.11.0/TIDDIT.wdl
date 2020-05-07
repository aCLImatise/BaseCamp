version 1.0

task TIDDIT.py {
  input {
    Boolean svSv
    Boolean covCov
    String? tiddTiddIt2110
  }
  command <<<
    TIDDIT.py \
      ~{tiddTiddIt2110} \
      ~{true="--sv" false="" svSv} \
      ~{true="--cov" false="" covCov}
  >>>
}