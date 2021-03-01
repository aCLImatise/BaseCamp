version 1.0

task Bank2sam {
  input {
    String? the_bank_operated
    Boolean? use_contigs_reference
    Boolean? use_scaffolds_reference
    Boolean? use_iids_is
  }
  command <<<
    bank2sam \
      ~{if defined(the_bank_operated) then ("-b " +  '"' + the_bank_operated + '"') else ""} \
      ~{if (use_contigs_reference) then "-c" else ""} \
      ~{if (use_scaffolds_reference) then "-s" else ""} \
      ~{if (use_iids_is) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    the_bank_operated: "The bank to be operated on."
    use_contigs_reference: "Use contigs as reference"
    use_scaffolds_reference: "Use scaffolds as reference"
    use_iids_is: "Use IIDs as query template name (EIDs is default.)"
  }
  output {
    File out_stdout = stdout()
  }
}