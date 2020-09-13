version 1.0

task MendelscanRhro {
  input {
    Boolean? ped_file
    File? centromere_file
    File? output_windows
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
      ~{if (ped_file) then "--ped-file" else ""} \
      ~{if (centromere_file) then "--centromere-file" else ""} \
      ~{if (output_windows) then "--output-windows" else ""} \
      ~{if (inheritance) then "--inheritance" else ""} \
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
  output {
    File out_stdout = stdout()
    File out_centromere_file = "${in_centromere_file}"
    File out_output_windows = "${in_output_windows}"
  }
}