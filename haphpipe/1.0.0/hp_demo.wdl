version 1.0

task HpDemo {
  input {
    String outdirOutdir
    Boolean refRefOnly
  }
  command <<<
    hp_demo \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--refonly" false="" refRefOnly}
  >>>
}