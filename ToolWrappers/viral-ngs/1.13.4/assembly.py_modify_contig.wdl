version 1.0

task AssemblypyModifyContig {
  input {
    String? name
    Boolean? call_reference_ns
    Boolean? trim_ends
    Boolean? replace_five_ends
    Boolean? replace_three_ends
    Int? replace_length
    String? format
    Boolean? replace_end_gaps
    Boolean? remove_end_ns
    Boolean? call_reference_ambiguous
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String? loglevel
    String r_seal_fondo_t
    String input_alignment_reference
    String destination_file_modified
    String ref
  }
  command <<<
    assembly_py modify_contig \
      ~{r_seal_fondo_t} \
      ~{input_alignment_reference} \
      ~{destination_file_modified} \
      ~{ref} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (call_reference_ns) then "--call-reference-ns" else ""} \
      ~{if (trim_ends) then "--trim-ends" else ""} \
      ~{if (replace_five_ends) then "--replace-5ends" else ""} \
      ~{if (replace_three_ends) then "--replace-3ends" else ""} \
      ~{if defined(replace_length) then ("--replace-length " +  '"' + replace_length + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (replace_end_gaps) then "--replace-end-gaps" else ""} \
      ~{if (remove_end_ns) then "--remove-end-ns" else ""} \
      ~{if (call_reference_ambiguous) then "--call-reference-ambiguous" else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  parameter_meta {
    name: "fasta header output name (default: existing header)"
    call_reference_ns: "should the reference sequence be called if there is an\\nN in the contig and a more specific base in the\\nreference (default: False)"
    trim_ends: "should ends of contig.fasta be trimmed to length of\\nreference (default: False)"
    replace_five_ends: "should the 5'-end of contig.fasta be replaced by\\nreference (default: False)"
    replace_three_ends: "should the 3'-end of contig.fasta be replaced by\\nreference (default: False)"
    replace_length: "length of ends to be replaced (if replace-ends is yes)\\n(default: 10)"
    format: "Format for input alignment (default: fasta)"
    replace_end_gaps: "Replace gaps at the beginning and end of the sequence\\nwith reference sequence (default: False)"
    remove_end_ns: "Remove leading and trailing N's in the contig\\n(default: False)"
    call_reference_ambiguous: "should the reference sequence be called if the contig\\nseq is ambiguous and the reference sequence is more\\ninformative & consistant with the ambiguous base (ie\\nY->C) (default: False)"
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure."
    loglevel: "Verboseness of output. [default: DEBUG]"
    r_seal_fondo_t: "positional arguments:"
    input_alignment_reference: "input alignment of reference and contig (should\\ncontain exactly 2 sequences)"
    destination_file_modified: "Destination file for modified contigs"
    ref: "reference sequence name (exact match required)"
  }
  output {
    File out_stdout = stdout()
  }
}