version 1.0

task CIRCexplorer2Annotate {
  input {
    String? ref
    String? genome
    String? bed
    String? output_file
    Boolean? no_fix
    Boolean? low_confidence
  }
  command <<<
    CIRCexplorer2 annotate \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{true="--no-fix" false="" no_fix} \
      ~{true="--low-confidence" false="" low_confidence}
  >>>
  parameter_meta {
    ref: "Gene annotation."
    genome: "Genome FASTA file."
    bed: "Input file."
    output_file: "Output file. [default: circularRNA_known.txt]"
    no_fix: "No-fix mode (useful for species with poor gene annotations)."
    low_confidence: "Extract low confidence circRNAs."
  }
}