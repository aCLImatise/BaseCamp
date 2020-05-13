version 1.0

task ProteinInference {
  input {
    File inIn
    File outOut
    String mergeMergeRuns
    String annotateAnnotateInDistGroups
    Boolean mergingMerging
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    ProteinInference \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(mergeMergeRuns) then ("-merge_runs " +  '"' + mergeMergeRuns + '"') else ""} \
      ~{if defined(annotateAnnotateInDistGroups) then ("-annotate_indist_groups " +  '"' + annotateAnnotateInDistGroups + '"') else ""} \
      ~{true="-Merging" false="" mergingMerging} \
      ~{true="-Algorithm" false="" algorithmAlgorithm} \
      ~{true="-Algorithm" false="" algorithmAlgorithm} \
      ~{true="-Algorithm" false="" algorithmAlgorithm} \
      ~{true="-Algorithm" false="" algorithmAlgorithm} \
      ~{true="-Algorithm" false="" algorithmAlgorithm} \
      ~{true="-Algorithm" false="" algorithmAlgorithm} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}