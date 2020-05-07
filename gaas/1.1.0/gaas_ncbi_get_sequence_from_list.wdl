version 1.0

task GaasNcbiGetSequenceFromList.pl {
  input {
    Boolean lineLine
    Boolean colCol
    Boolean qQ
    Boolean qQ
    String outfileOutfile
  }
  command <<<
    gaas_ncbi_get_sequence_from_list.pl \
      ~{true="--line" false="" lineLine} \
      ~{true="--col" false="" colCol} \
      ~{true="-q" false="" qQ} \
      ~{true="-q" false="" qQ} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""}
  >>>
}