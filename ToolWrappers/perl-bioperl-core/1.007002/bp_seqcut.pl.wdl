version 1.0

task BpSeqcutpl {
  input {
    String? help_message
    String? residue_start_cutting
    String? residue_finish_cutting
    String? files_defaults_fasta
    String? wrap_width_supported
    String help
    String of
    String residue
    String wrap
    String the
    String to
    String width
    String files
    String finish
    String start
    String cutting
  }
  command <<<
    bp_seqcut_pl \
      ~{help} \
      ~{of} \
      ~{residue} \
      ~{wrap} \
      ~{the} \
      ~{to} \
      ~{width} \
      ~{files} \
      ~{finish} \
      ~{start} \
      ~{cutting} \
      ~{if defined(help_message) then ("-h " +  '"' + help_message + '"') else ""} \
      ~{if defined(residue_start_cutting) then ("-s " +  '"' + residue_start_cutting + '"') else ""} \
      ~{if defined(residue_finish_cutting) then ("-e " +  '"' + residue_finish_cutting + '"') else ""} \
      ~{if defined(files_defaults_fasta) then ("-f " +  '"' + files_defaults_fasta + '"') else ""} \
      ~{if defined(wrap_width_supported) then ("-w " +  '"' + wrap_width_supported + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_message: "help message"
    residue_start_cutting: "residue to start cutting on"
    residue_finish_cutting: "residue to finish cutting on"
    files_defaults_fasta: "of the files, defaults to FASTA but you can specify anything supported by SeqIO from BioPerl"
    wrap_width_supported: "wrap width, this might not be supported depending on which format you are using"
    help: ""
    of: ""
    residue: ""
    wrap: ""
    the: ""
    to: ""
    width: ""
    files: ""
    finish: ""
    start: ""
    cutting: ""
  }
  output {
    File out_stdout = stdout()
  }
}