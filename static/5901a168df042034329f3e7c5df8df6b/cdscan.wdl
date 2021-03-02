version 1.0

task Cdscan {
  input {
    Boolean? scan_dna_protein
    Boolean? output_format_genbank
    Boolean? call_custom_process
    Boolean? show_progress_monitor
    File? output_file_default
  }
  command <<<
    cdscan \
      ~{if (scan_dna_protein) then "-s" else ""} \
      ~{if (output_format_genbank) then "-f" else ""} \
      ~{if (call_custom_process) then "-c" else ""} \
      ~{if (show_progress_monitor) then "-p" else ""} \
      ~{if (output_file_default) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    scan_dna_protein: "Scan DNA (1) or Protein (2) [Integer]\\ndefault = 1\\nrange from 1 to 2"
    output_format_genbank: "Output format: GenBank (1) or FASTA (2) [Integer]  Optional\\ndefault = 1\\nrange from 1 to 2"
    call_custom_process: "Call custom process [T/F]  Optional\\ndefault = F"
    show_progress_monitor: "Show progress monitor [T/F]  Optional\\ndefault = F"
    output_file_default: "Output File [File Out]\\ndefault = stdout\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}