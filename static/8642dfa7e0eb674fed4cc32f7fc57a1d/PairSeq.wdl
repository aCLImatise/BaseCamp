version 1.0

task PairSeq.py {
  input {
    String outdirOutdir
    String outOutName
    Boolean failedFailed
    Boolean fastFastA
    String delimDelim
    String actAct
    Boolean coordCoord
    String? pairPairPass
    String? pairPairFail
  }
  command <<<
    PairSeq.py \
      ~{pairPairPass} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{true="--failed" false="" failedFailed} \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(delimDelim) then ("--delim " +  '"' + delimDelim + '"') else ""} \
      ~{if defined(actAct) then ("--act " +  '"' + actAct + '"') else ""} \
      ~{true="--coord" false="" coordCoord} \
      ~{pairPairFail}
  >>>
}