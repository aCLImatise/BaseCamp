version 1.0

task PathoscopeREP {
  input {
    String samSamToolsHome
    String dbhostDbhost
    String dbDbPort
    String dbuserDbuser
    String dbDbPasswd
    String dbDb
    String outdirOutdir
    Boolean contigContig
    String samSamFile
    Boolean noNoDisplayCutOff
  }
  command <<<
    pathoscope REP \
      ~{if defined(samSamToolsHome) then ("-samtoolsHome " +  '"' + samSamToolsHome + '"') else ""} \
      ~{if defined(dbhostDbhost) then ("-dbhost " +  '"' + dbhostDbhost + '"') else ""} \
      ~{if defined(dbDbPort) then ("-dbport " +  '"' + dbDbPort + '"') else ""} \
      ~{if defined(dbuserDbuser) then ("-dbuser " +  '"' + dbuserDbuser + '"') else ""} \
      ~{if defined(dbDbPasswd) then ("-dbpasswd " +  '"' + dbDbPasswd + '"') else ""} \
      ~{if defined(dbDb) then ("-db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(outdirOutdir) then ("-outDir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--contig" false="" contigContig} \
      ~{if defined(samSamFile) then ("-samfile " +  '"' + samSamFile + '"') else ""} \
      ~{true="--noDisplayCutoff" false="" noNoDisplayCutOff}
  >>>
}