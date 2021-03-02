version 1.0

task QualityFilterpl {
  input {
    Boolean? prints_aed_maker
    Boolean? prints_transcripts_andor
    Boolean? number_given_value
    Boolean? more_options
    Boolean? options
  }
  command <<<
    quality_filter_pl \
      ~{if (prints_aed_maker) then "-d" else ""} \
      ~{if (prints_transcripts_andor) then "-s" else ""} \
      ~{if (number_given_value) then "-a" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0"
  }
  parameter_meta {
    prints_aed_maker: "Prints transcripts with an AED <1 (MAKER default)"
    prints_transcripts_andor: "Prints transcripts with an AED <1 and/or Pfam domain\\nif in gff3 (MAKER Standard)"
    number_given_value: "<number between 0 and 1> Prints transcripts with an\\nAED < the given value\\n"
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}