version 1.0

task AgatSpFilterIncompleteGeneCodingModels.pl {
  input {
    Boolean gffGff
    String fastFastA
    String tableTable
    String addAddFlag
    String skipSkipStartCheck
    String skipSkipStopCheck
    Boolean oO
    Boolean vV
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_filter_incomplete_gene_coding_models.pl \
      ~{true="-gff" false="" gffGff} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{if defined(addAddFlag) then ("--add_flag " +  '"' + addAddFlag + '"') else ""} \
      ~{if defined(skipSkipStartCheck) then ("--skip_start_check " +  '"' + skipSkipStartCheck + '"') else ""} \
      ~{if defined(skipSkipStopCheck) then ("--skip_stop_check " +  '"' + skipSkipStopCheck + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}