version 1.0

task GaasFastaCheckProteins.pl {
  input {
    String? ref_file
    String? default_result_written
  }
  command <<<
    gaas_fasta_checkProteins.pl \
      ~{if defined(ref_file) then ("--reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(default_result_written) then ("--output " +  '"' + default_result_written + '"') else ""}
  >>>
  parameter_meta {
    ref_file: "Input fasta file that will be read. In general come from gffread output."
    default_result_written: "By default the result is written on screen at te fly. If you give an output it will writte the report in this file."
  }
}