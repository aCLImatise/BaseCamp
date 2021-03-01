version 1.0

task CIRCexplorerpy {
  input {
    File? fusion
    File? jun_c
    File? genome
    String? ref
    String? output_prefix_
    Boolean? tmp
    Boolean? no_fix
  }
  command <<<
    CIRCexplorer_py \
      ~{if defined(fusion) then ("--fusion " +  '"' + fusion + '"') else ""} \
      ~{if defined(jun_c) then ("--junc " +  '"' + jun_c + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(output_prefix_) then ("--output " +  '"' + output_prefix_ + '"') else ""} \
      ~{if (tmp) then "--tmp" else ""} \
      ~{if (no_fix) then "--no-fix" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fusion: "TopHat-Fusion fusion BAM file. (used in TopHat-Fusion mapping)"
    jun_c: "STAR Chimeric junction file. (used in STAR mapping)"
    genome: "Genome FASTA file."
    ref: "Gene annotation."
    output_prefix_: "Output prefix [default: CIRCexplorer]."
    tmp: "Keep temporary files."
    no_fix: "No-fix mode (useful for species with poor gene annotations)"
  }
  output {
    File out_stdout = stdout()
  }
}