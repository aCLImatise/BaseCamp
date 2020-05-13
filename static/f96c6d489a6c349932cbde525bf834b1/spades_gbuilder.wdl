version 1.0

task SpadesGbuilder {
  input {
    String kK
    String tT
    String tmpTmpDir
    String bB
    Boolean unitUnitIgs
    Boolean fastFastG
    Boolean gfaGfa
    Boolean spadesSpades
  }
  command <<<
    spades-gbuilder \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("-tmp-dir " +  '"' + tmpTmpDir + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="--unitigs" false="" unitUnitIgs} \
      ~{true="--fastg" false="" fastFastG} \
      ~{true="--gfa" false="" gfaGfa} \
      ~{true="--spades" false="" spadesSpades}
  >>>
}