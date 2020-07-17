version 1.0

task Bank2sam {
  input {
    String? the_bank_operated
    Boolean? use_contigs_reference
    Boolean? use_scaffolds_reference
    Boolean? use_iids_query
  }
  command <<<
    bank2sam \
      ~{if defined(the_bank_operated) then ("-b " +  '"' + the_bank_operated + '"') else ""} \
      ~{true="-c" false="" use_contigs_reference} \
      ~{true="-s" false="" use_scaffolds_reference} \
      ~{true="-i" false="" use_iids_query}
  >>>
  parameter_meta {
    the_bank_operated: "The bank to be operated on. "
    use_contigs_reference: "Use contigs as reference"
    use_scaffolds_reference: "Use scaffolds as reference"
    use_iids_query: "Use IIDs as query template name (EIDs is default.) "
  }
}