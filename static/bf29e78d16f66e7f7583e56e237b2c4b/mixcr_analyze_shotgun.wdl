version 1.0

task MixcrAnalyzeShotgun {
  input {
    Boolean? no_warnings
    Boolean? verbose
    File? force_overwrite
    File? species
    Boolean? impute_germline_on_export
    Boolean? only_productive
    Boolean? contig_assembly
    Boolean? no_export
    File? report
    Int? align
    Int? assemble_partial
    Int? extend
    Int? assemble
    String? assemble_contigs
    String? export
    Int? assemble_partial_rounds
    Boolean? do_not_extend_alignments
    String? receptor_type
    String? starting_material
    String data_dot
  }
  command <<<
    mixcr analyze shotgun \
      ~{data_dot} \
      ~{if (no_warnings) then "--no-warnings" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if (impute_germline_on_export) then "--impute-germline-on-export" else ""} \
      ~{if (only_productive) then "--only-productive" else ""} \
      ~{if (contig_assembly) then "--contig-assembly" else ""} \
      ~{if (no_export) then "--no-export" else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{if defined(assemble_partial) then ("--assemblePartial " +  '"' + assemble_partial + '"') else ""} \
      ~{if defined(extend) then ("--extend " +  '"' + extend + '"') else ""} \
      ~{if defined(assemble) then ("--assemble " +  '"' + assemble + '"') else ""} \
      ~{if defined(assemble_contigs) then ("--assembleContigs " +  '"' + assemble_contigs + '"') else ""} \
      ~{if defined(export) then ("--export " +  '"' + export + '"') else ""} \
      ~{if defined(assemble_partial_rounds) then ("--assemble-partial-rounds " +  '"' + assemble_partial_rounds + '"') else ""} \
      ~{if (do_not_extend_alignments) then "--do-not-extend-alignments" else ""} \
      ~{if defined(receptor_type) then ("--receptor-type " +  '"' + receptor_type + '"') else ""} \
      ~{if defined(starting_material) then ("--starting-material " +  '"' + starting_material + '"') else ""}
  >>>
  parameter_meta {
    no_warnings: "Suppress all warning messages."
    verbose: "Verbose warning messages."
    force_overwrite: "Force overwrite of output file(s)."
    species: "Species (organism), as specified in library file or taxon id.\\nPossible values: hs, HomoSapiens, musmusculus, mmu, hsa, 9606, 10090 etc."
    impute_germline_on_export: "Export germline segments"
    only_productive: "Filter out-of-frame sequences and clonotypes with stop-codons in clonal\\nsequence export"
    contig_assembly: "Assemble longest possible sequences from input data. Useful for shotgun-like"
    no_export: "Do not export clonotypes to tab-delimited file."
    report: "Report file path"
    align: "Additional parameters for align step specified with double quotes (e.g\\n--align \\\"--limit 1000\\\" --align \\\"-OminSumScore=100\\\" etc."
    assemble_partial: "Additional parameters for assemblePartial step specified with double quotes\\n(e.g --assemblePartial \\\"--overlappedOnly\\\" --assemblePartial \\\"-OkOffset=0\\\"\\netc."
    extend: "Additional parameters for extend step specified with double quotes (e.g\\n--extend \\\"--chains TRB\\\" --extend \\\"--quality 0\\\" etc."
    assemble: "Additional parameters for assemble step specified with double quotes (e.g\\n--assemble \\\"-OassemblingFeatures=[V5UTR+L1+L2+FR1,FR3+CDR3]\\\" --assemble\\n\\\"-ObadQualityThreshold=0\\\" etc."
    assemble_contigs: "Additional parameters for assemble contigs step specified with double quotes"
    export: "Additional parameters for exportClones step specified with double quotes (e.\\ng --export \\\"-p full\\\" --export \\\"-cloneId\\\" etc."
    assemble_partial_rounds: "Number of rounds of assemblePartial"
    do_not_extend_alignments: "Skip TCR alignments extension"
    receptor_type: "Receptor type. Possible values: tcr, bcr, xcr, tra, trb, trd, trg, igh, igk,\\nigl"
    starting_material: "Starting material. Possible values: rna, dna\\n"
    data_dot: "NOTE: this will substantially increase analysis time."
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite = "${in_force_overwrite}"
  }
}