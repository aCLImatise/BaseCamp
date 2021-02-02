version 1.0

task CIRCexplorer2Denovo {
  input {
    String? ref
    String? detect_alternative_splicing
    String? as_type
    String? abs
    File? bed
    Directory? cuff
    Directory? top_hat
    Directory? pa_plus
    Directory? output_folder
    File? genome
    Boolean? no_fix
    Boolean? rp_km
  }
  command <<<
    CIRCexplorer2 denovo \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(detect_alternative_splicing) then ("--as " +  '"' + detect_alternative_splicing + '"') else ""} \
      ~{if defined(as_type) then ("--as-type " +  '"' + as_type + '"') else ""} \
      ~{if defined(abs) then ("--abs " +  '"' + abs + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(cuff) then ("--cuff " +  '"' + cuff + '"') else ""} \
      ~{if defined(top_hat) then ("--tophat " +  '"' + top_hat + '"') else ""} \
      ~{if defined(pa_plus) then ("--pAplus " +  '"' + pa_plus + '"') else ""} \
      ~{if defined(output_folder) then ("--output " +  '"' + output_folder + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (no_fix) then "--no-fix" else ""} \
      ~{if (rp_km) then "--rpkm" else ""}
  >>>
  parameter_meta {
    ref: "Gene annotation."
    detect_alternative_splicing: "Detect alternative splicing and output."
    as_type: "Only check certain type (CE/RI/ASS) of AS events."
    abs: "Detect alternative back-splicing and output."
    bed: "Input file."
    cuff: "assemble folder output by CIRCexplorer2 assemble. [default: '']"
    top_hat: "TopHat mapping folder."
    pa_plus: "TopHat mapping directory for p(A)+ RNA-seq."
    output_folder: "Output Folder. [default: denovo]"
    genome: "Genome FASTA file."
    no_fix: "No-fix mode (useful for species with poor gene annotations)."
    rp_km: "Calculate RPKM for cassette exons."
  }
  output {
    File out_stdout = stdout()
    Directory out_cuff = "${in_cuff}"
    Directory out_output_folder = "${in_output_folder}"
  }
}