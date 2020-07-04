version 1.0

task GaasSyncDatAndEmbl.pl {
  input {
    Boolean? dat
    Boolean? embl
    Boolean? bac
    String? output_will_embl
  }
  command <<<
    gaas_sync_dat_and_embl.pl \
      ~{true="--dat" false="" dat} \
      ~{true="--embl" false="" embl} \
      ~{true="--bac" false="" bac} \
      ~{if defined(output_will_embl) then ("--output " +  '"' + output_will_embl + '"') else ""}
  >>>
  parameter_meta {
    dat: "Input dat file provided by ENA"
    embl: "Input embl file"
    bac: "Bolean. Believe in AC line. Instead of looking at the sequence size, look at the AC line (the second one of each record) as common information for the two files."
    output_will_embl: "The output will be the EMBL file with the record \"headers\" modified"
  }
}