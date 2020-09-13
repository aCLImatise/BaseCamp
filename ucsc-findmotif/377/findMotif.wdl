version 1.0

task FindMotif {
  input {
    String? motif
    String? chr
    Boolean? strand
    Boolean? bed_output
    File? wig_output
  }
  command <<<
    findMotif \
      ~{if defined(motif) then ("-motif " +  '"' + motif + '"') else ""} \
      ~{if defined(chr) then ("-chr " +  '"' + chr + '"') else ""} \
      ~{if (strand) then "-strand" else ""} \
      ~{if (bed_output) then "-bedOutput" else ""} \
      ~{if (wig_output) then "-wigOutput" else ""}
  >>>
  parameter_meta {
    motif: "- search for this specified motif (case ignored, [acgt] only)"
    chr: "- process only this one chrN from the sequence"
    strand: "=<+|-> - limit to only one strand.  Default is both."
    bed_output: "- output bed format (this is the default)"
    wig_output: "- output wiggle data format instead of bed file"
  }
  output {
    File out_stdout = stdout()
    File out_wig_output = "${in_wig_output}"
  }
}