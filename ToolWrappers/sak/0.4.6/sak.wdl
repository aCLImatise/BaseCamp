version 1.0

task Sak {
  input {
    Boolean? version_check
    File? out_path
    Boolean? rev_comp
    Int? max_length
    Int? sequence
    String? sequence_name
    String? sequences
    String? in_fix
    Int? line_length
  }
  command <<<
    sak \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(out_path) then ("--out-path " +  '"' + out_path + '"') else ""} \
      ~{if (rev_comp) then "--revcomp" else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(sequence_name) then ("--sequence-name " +  '"' + sequence_name + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(in_fix) then ("--infix " +  '"' + in_fix + '"') else ""} \
      ~{if defined(line_length) then ("--line-length " +  '"' + line_length + '"') else ""}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the\\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\\nDefault: 1."
    out_path: "Path to the resulting file. If omitted, result is printed to stdout\\nin FastQ format. Valid filetypes are: .sam, .raw, .frn, .fq, .fna,\\n.ffn, .fastq, .fasta, .faa, .fa, and .bam."
    rev_comp: "Reverse-complement output."
    max_length: "Maximal number of sequence characters to write out."
    sequence: "of INTEGER's\\nSelect the given sequence for extraction by 0-based index."
    sequence_name: "of STRING's\\nSelect sequence with name prefix being NAME."
    sequences: "of STRING's\\nSelect sequences from-to where from and to are 0-based indices."
    in_fix: "of STRING's\\nSelect characters from-to where from and to are 0-based indices."
    line_length: "Set line length in output file. See section Line Length for details.\\nIn range [-1..inf]."
  }
  output {
    File out_stdout = stdout()
    File out_out_path = "${in_out_path}"
  }
}