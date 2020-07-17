version 1.0

task ProteinInference {
  input {
    File? in
    File? out
    String? min_peptides_per_protein
    Boolean? treat_charge_variants_separately
    Boolean? treat_modification_variants_separately
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    ProteinInference \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(min_peptides_per_protein) then ("-min_peptides_per_protein " +  '"' + min_peptides_per_protein + '"') else ""} \
      ~{true="-treat_charge_variants_separately" false="" treat_charge_variants_separately} \
      ~{true="-treat_modification_variants_separately" false="" treat_modification_variants_separately} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                               Input file (valid formats: 'idXML')"
    out: "*                              Output file (valid formats: 'idXML')"
    min_peptides_per_protein: "Minimal number of peptides needed for a protein identification (default: '2' min: '1')"
    treat_charge_variants_separately: "If this flag is set, different charge variants of the same peptide sequence count as inidividual evidences."
    treat_modification_variants_separately: "If this flag is set, different modification variants of the same peptide sequence count as individual evidences."
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}