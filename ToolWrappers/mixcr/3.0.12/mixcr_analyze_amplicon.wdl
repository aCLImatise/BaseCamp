version 1.0

task MixcrAnalyzeAmplicon {
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
    Int? assemble
    String? assemble_contigs
    String? export
    Boolean? do_not_extend_alignments
    String? receptor_type
    String? starting_material
    Int? five_end
    Int? three_end
    Int? region_of_interest
    String data_dot
    String c_primers
  }
  command <<<
    mixcr analyze amplicon \
      ~{data_dot} \
      ~{c_primers} \
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
      ~{if defined(assemble) then ("--assemble " +  '"' + assemble + '"') else ""} \
      ~{if defined(assemble_contigs) then ("--assembleContigs " +  '"' + assemble_contigs + '"') else ""} \
      ~{if defined(export) then ("--export " +  '"' + export + '"') else ""} \
      ~{if (do_not_extend_alignments) then "--do-not-extend-alignments" else ""} \
      ~{if defined(receptor_type) then ("--receptor-type " +  '"' + receptor_type + '"') else ""} \
      ~{if defined(starting_material) then ("--starting-material " +  '"' + starting_material + '"') else ""} \
      ~{if defined(five_end) then ("--5-end " +  '"' + five_end + '"') else ""} \
      ~{if defined(three_end) then ("--3-end " +  '"' + three_end + '"') else ""} \
      ~{if defined(region_of_interest) then ("--region-of-interest " +  '"' + region_of_interest + '"') else ""}
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
    assemble: "Additional parameters for assemble step specified with double quotes (e.g\\n--assemble \\\"-OassemblingFeatures=[V5UTR+L1+L2+FR1,FR3+CDR3]\\\" --assemble\\n\\\"-ObadQualityThreshold=0\\\" etc."
    assemble_contigs: "Additional parameters for assemble contigs step specified with double quotes"
    export: "Additional parameters for exportClones step specified with double quotes (e.\\ng --export \\\"-p full\\\" --export \\\"-cloneId\\\" etc."
    do_not_extend_alignments: "Skip TCR alignments extension"
    receptor_type: "Receptor type. Possible values: tcr, bcr, xcr, tra, trb, trd, trg, igh, igk,\\nigl"
    starting_material: "Starting material. Possible values: rna, dna"
    five_end: "5'-end of the library. Possible values: no-v-primers, v-primers"
    three_end: "3'-end of the library. Possible values: j-primers, j-c-intron-primers,"
    region_of_interest: "MiXCR will use only reads covering the whole target region; reads which\\npartially cover selected region will be dropped during clonotype assembly.\\nAll non-CDR3 options require long high-quality paired-end data. See https:\\n//mixcr.readthedocs.io/en/master/geneFeatures.html for details.\\n"
    data_dot: "NOTE: this will substantially increase analysis time."
    c_primers: "--adapters <adapters> Presence of PCR primers and/or adapter sequences. If sequences of primers"
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite = "${in_force_overwrite}"
  }
}