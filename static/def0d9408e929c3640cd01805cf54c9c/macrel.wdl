version 1.0

task Macrel {
  input {
    Boolean keepKeepFastAHeaders
    String tmpdirTmpdir
    Boolean keepKeepNegatives
    String? commandCommand
  }
  command <<<
    macrel \
      ~{commandCommand} \
      ~{true="--keep-fasta-headers" false="" keepKeepFastAHeaders} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{true="--keep-negatives" false="" keepKeepNegatives}
  >>>
}