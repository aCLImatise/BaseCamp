version 1.0

task Sak {
  input {
    Boolean? version_check
    String? out_path
    Boolean? rev_comp
    Int? max_length
    Int? line_length
  }
  command <<<
    sak \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(out_path) then ("--out-path " +  '"' + out_path + '"') else ""} \
      ~{true="--revcomp" false="" rev_comp} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(line_length) then ("--line-length " +  '"' + line_length + '"') else ""}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the application. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1."
    out_path: "Path to the resulting file. If omitted, result is printed to stdout in FastQ format. Valid filetypes are: .sam, .raw, .frn, .fq, .fna, .ffn, .fastq, .fasta, .faa, .fa, and .bam."
    rev_comp: "Reverse-complement output."
    max_length: "Maximal number of sequence characters to write out."
    line_length: "Set line length in output file. See section Line Length for details. In range [-1..inf]."
  }
}