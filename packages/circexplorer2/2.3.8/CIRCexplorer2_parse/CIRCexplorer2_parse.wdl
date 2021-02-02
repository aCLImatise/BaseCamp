version 1.0

task CIRCexplorer2Parse {
  input {
    String? aligner_tophatfusion_star
    File? bed
    Boolean? pe
    Boolean? statistics_fragment_numbers
    String fusion
  }
  command <<<
    CIRCexplorer2 parse \
      ~{fusion} \
      ~{if defined(aligner_tophatfusion_star) then ("-t " +  '"' + aligner_tophatfusion_star + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if (pe) then "--pe" else ""} \
      ~{if (statistics_fragment_numbers) then "-f" else ""}
  >>>
  parameter_meta {
    aligner_tophatfusion_star: "Aligner (TopHat-Fusion, STAR, MapSplice, BWA, segemehl)."
    bed: "Output file.\\n[default: back_spliced_junction.bed]"
    pe: "Parse paired-end alignment file (only for TopHat-Fusion). If this is set, then -f is set automatically."
    statistics_fragment_numbers: "Statistics fragment numbers rather than read numbers."
    fusion: ""
  }
  output {
    File out_stdout = stdout()
    File out_bed = "${in_bed}"
  }
}