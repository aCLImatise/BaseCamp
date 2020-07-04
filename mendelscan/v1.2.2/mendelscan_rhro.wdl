version 1.0

task MendelscanRhro {
  input {
    Boolean? ped_file
    Boolean? centromere_file
    Boolean? output_windows
    Boolean? inheritance
    String? jar
    String java
    String rh_ro
    String? vcf
  }
  command <<<
    mendelscan rhro \
      ~{java} \
      ~{rh_ro} \
      ~{vcf} \
      ~{true="--ped-file" false="" ped_file} \
      ~{true="--centromere-file" false="" centromere_file} \
      ~{true="--output-windows" false="" output_windows} \
      ~{true="--inheritance" false="" inheritance} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    ped_file: "Pedigree file in 6-column tab-delimited format"
    centromere_file: "A tab-delimited, BED-like file indicating centromere locations by chromosome    --output-file   Output file to contain informative variants"
    output_windows: "Output file to contain RHRO windows. Otherwise they print to STDOUT"
    inheritance: "Presumed model of inheritance: dominant, recessive, x-linked [dominant]"
    jar: ""
    java: ""
    rh_ro: ""
    vcf: ""
  }
}