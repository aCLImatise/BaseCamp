version 1.0

task AgatConvertMfannot2gffpl {
  input {
    File? m_fan_not
    File? gff
    Int gaas_convert_mfannottwogffdotpl
  }
  command <<<
    agat_convert_mfannot2gff_pl \
      ~{gaas_convert_mfannottwogffdotpl} \
      ~{if defined(m_fan_not) then ("--mfannot " +  '"' + m_fan_not + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    m_fan_not: "The mfannot input file"
    gff: "the gff output file"
    gaas_convert_mfannottwogffdotpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_gff = "${in_gff}"
  }
}