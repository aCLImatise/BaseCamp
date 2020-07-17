version 1.0

task AgatConvertMfannot2gff.pl {
  input {
    String? m_fan_not
    String? gff
    String gaas_convert_mfannottwogffdotpl
  }
  command <<<
    agat_convert_mfannot2gff.pl \
      ~{gaas_convert_mfannottwogffdotpl} \
      ~{if defined(m_fan_not) then ("--mfannot " +  '"' + m_fan_not + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""}
  >>>
  parameter_meta {
    m_fan_not: "The mfannot input file"
    gff: "the gff output file"
    gaas_convert_mfannottwogffdotpl: ""
  }
}