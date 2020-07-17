version 1.0

task BpSeqcut.pl {
  input {
    String? help_message
    String? residue_start_cutting
    String? residue_finish_cutting
    String? files_defaults_fasta
    String? wrap_width_might
  }
  command <<<
    bp_seqcut.pl \
      ~{if defined(help_message) then ("-h " +  '"' + help_message + '"') else ""} \
      ~{if defined(residue_start_cutting) then ("-s " +  '"' + residue_start_cutting + '"') else ""} \
      ~{if defined(residue_finish_cutting) then ("-e " +  '"' + residue_finish_cutting + '"') else ""} \
      ~{if defined(files_defaults_fasta) then ("-f " +  '"' + files_defaults_fasta + '"') else ""} \
      ~{if defined(wrap_width_might) then ("-w " +  '"' + wrap_width_might + '"') else ""}
  >>>
  parameter_meta {
    help_message: "help message"
    residue_start_cutting: "residue to start cutting on"
    residue_finish_cutting: "residue to finish cutting on"
    files_defaults_fasta: "of the files, defaults to FASTA but you can specify anything supported by SeqIO from BioPerl"
    wrap_width_might: "wrap width, this might not be supported depending on which format you are using"
  }
}