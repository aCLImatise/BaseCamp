version 1.0

task CIRCexplorer.py {
  input {
    String? fusion
    String? jun_c
    String? genome
    String? ref
    String? output_prefix_
    Boolean? tmp
    Boolean? no_fix
  }
  command <<<
    CIRCexplorer.py \
      ~{if defined(fusion) then ("--fusion " +  '"' + fusion + '"') else ""} \
      ~{if defined(jun_c) then ("--junc " +  '"' + jun_c + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(output_prefix_) then ("--output " +  '"' + output_prefix_ + '"') else ""} \
      ~{true="--tmp" false="" tmp} \
      ~{true="--no-fix" false="" no_fix}
  >>>
  parameter_meta {
    fusion: "TopHat-Fusion fusion BAM file. (used in TopHat-Fusion mapping)"
    jun_c: "STAR Chimeric junction file. (used in STAR mapping)"
    genome: "Genome FASTA file."
    ref: "Gene annotation."
    output_prefix_: "Output prefix [default: CIRCexplorer]."
    tmp: "Keep temporary files."
    no_fix: "No-fix mode (useful for species with poor gene annotations)"
  }
}