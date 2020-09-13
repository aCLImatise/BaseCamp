version 1.0

task CIRCexplorer2Annotate {
  input {
    String? ref
    File? genome
    File? bed
    File? output_file
    Boolean? no_fix
    Boolean? low_confidence
  }
  command <<<
    CIRCexplorer2 annotate \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if (no_fix) then "--no-fix" else ""} \
      ~{if (low_confidence) then "--low-confidence" else ""}
  >>>
  parameter_meta {
    ref: "Gene annotation."
    genome: "Genome FASTA file."
    bed: "Input file."
    output_file: "Output file.\\n[default: circularRNA_known.txt]"
    no_fix: "No-fix mode (useful for species with poor gene annotations)."
    low_confidence: "Extract low confidence circRNAs."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}