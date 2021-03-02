version 1.0

task ConvertAlphabetpy {
  input {
    String? input_format_fastq
    String? output_format_fastq
    Boolean? rnadna_alphabet_conversion
    Boolean? dnarna_alphabet_conversion
  }
  command <<<
    convert_alphabet_py \
      ~{if defined(input_format_fastq) then ("-i " +  '"' + input_format_fastq + '"') else ""} \
      ~{if defined(output_format_fastq) then ("-o " +  '"' + output_format_fastq + '"') else ""} \
      ~{if (rnadna_alphabet_conversion) then "-D" else ""} \
      ~{if (dnarna_alphabet_conversion) then "-R" else ""}
  >>>
  parameter_meta {
    input_format_fastq: "Input format (fastq)."
    output_format_fastq: "Output format (fastq)."
    rnadna_alphabet_conversion: "RNA->DNA alphabet conversion."
    dnarna_alphabet_conversion: "DNA->RNA alphabet conversion."
  }
  output {
    File out_stdout = stdout()
  }
}