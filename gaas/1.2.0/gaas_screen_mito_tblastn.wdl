version 1.0

task GaasScreenMitoTblastn.pl {
  input {
    Boolean? tab
    String? output_will_embl
    String? genome
    String screen_mi_to_tblastn_do_tpl
  }
  command <<<
    gaas_screen_mito_tblastn.pl \
      ~{screen_mi_to_tblastn_do_tpl} \
      ~{true="--tab" false="" tab} \
      ~{if defined(output_will_embl) then ("--output " +  '"' + output_will_embl + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""}
  >>>
  parameter_meta {
    tab: "Input tabulated blast file -outfmt 6"
    output_will_embl: "The output will be the EMBL file with the record \"headers\" modified"
    genome: "Optional. Genome in fasta format. Allow to calculate the mapping coverage."
    screen_mi_to_tblastn_do_tpl: ""
  }
}