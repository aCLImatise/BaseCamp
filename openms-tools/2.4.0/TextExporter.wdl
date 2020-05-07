version 1.0

task TextExporter {
  input {
    File inIn
    File outOut
    String separatorSeparator
    String replacementReplacement
    String quotingQuoting
    Boolean noNoIds
    Boolean featureFeature
    Boolean featureFeature
    Boolean idId
    Boolean idId
    Boolean idId
    Boolean idId
    Boolean idId
    Boolean consensusConsensus
    Boolean consensusConsensus
    Boolean consensusConsensus
    Boolean consensusConsensus
    Boolean consensusConsensus
    Boolean consensusConsensus
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    TextExporter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(separatorSeparator) then ("-separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{if defined(replacementReplacement) then ("-replacement " +  '"' + replacementReplacement + '"') else ""} \
      ~{if defined(quotingQuoting) then ("-quoting " +  '"' + quotingQuoting + '"') else ""} \
      ~{true="-no_ids" false="" noNoIds} \
      ~{true="-feature" false="" featureFeature} \
      ~{true="-feature" false="" featureFeature} \
      ~{true="-id" false="" idId} \
      ~{true="-id" false="" idId} \
      ~{true="-id" false="" idId} \
      ~{true="-id" false="" idId} \
      ~{true="-id" false="" idId} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}