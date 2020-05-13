version 1.0

task GaasNcbiGetReferenceData.pl {
  input {
    String listList
    Boolean organismsOrganisms
    String dbsDbs
    String formatFormat
    String outfileOutfile
  }
  command <<<
    gaas_ncbi_get_reference_data.pl \
      ~{if defined(listList) then ("--list " +  '"' + listList + '"') else ""} \
      ~{true="--organisms" false="" organismsOrganisms} \
      ~{if defined(dbsDbs) then ("--dbs " +  '"' + dbsDbs + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""}
  >>>
}