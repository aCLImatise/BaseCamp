class: CommandLineTool
id: mixcr_analyze_amplicon.cwl
inputs:
- id: in_no_warnings
  doc: Suppress all warning messages.
  type: boolean?
  inputBinding:
    prefix: --no-warnings
- id: in_verbose
  doc: Verbose warning messages.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_force_overwrite
  doc: Force overwrite of output file(s).
  type: File?
  inputBinding:
    prefix: --force-overwrite
- id: in_species
  doc: "Species (organism), as specified in library file or taxon id.\nPossible values:\
    \ hs, HomoSapiens, musmusculus, mmu, hsa, 9606, 10090 etc."
  type: File?
  inputBinding:
    prefix: --species
- id: in_impute_germline_on_export
  doc: Export germline segments
  type: boolean?
  inputBinding:
    prefix: --impute-germline-on-export
- id: in_only_productive
  doc: "Filter out-of-frame sequences and clonotypes with stop-codons in clonal\n\
    sequence export"
  type: boolean?
  inputBinding:
    prefix: --only-productive
- id: in_contig_assembly
  doc: Assemble longest possible sequences from input data. Useful for shotgun-like
  type: boolean?
  inputBinding:
    prefix: --contig-assembly
- id: in_no_export
  doc: Do not export clonotypes to tab-delimited file.
  type: boolean?
  inputBinding:
    prefix: --no-export
- id: in_report
  doc: Report file path
  type: File?
  inputBinding:
    prefix: --report
- id: in_align
  doc: "Additional parameters for align step specified with double quotes (e.g\n--align\
    \ \"--limit 1000\" --align \"-OminSumScore=100\" etc."
  type: long?
  inputBinding:
    prefix: --align
- id: in_assemble
  doc: "Additional parameters for assemble step specified with double quotes (e.g\n\
    --assemble \"-OassemblingFeatures=[V5UTR+L1+L2+FR1,FR3+CDR3]\" --assemble\n\"\
    -ObadQualityThreshold=0\" etc."
  type: long?
  inputBinding:
    prefix: --assemble
- id: in_assemble_contigs
  doc: Additional parameters for assemble contigs step specified with double quotes
  type: string?
  inputBinding:
    prefix: --assembleContigs
- id: in_export
  doc: "Additional parameters for exportClones step specified with double quotes (e.\n\
    g --export \"-p full\" --export \"-cloneId\" etc."
  type: string?
  inputBinding:
    prefix: --export
- id: in_do_not_extend_alignments
  doc: Skip TCR alignments extension
  type: boolean?
  inputBinding:
    prefix: --do-not-extend-alignments
- id: in_receptor_type
  doc: "Receptor type. Possible values: tcr, bcr, xcr, tra, trb, trd, trg, igh, igk,\n\
    igl"
  type: string?
  inputBinding:
    prefix: --receptor-type
- id: in_starting_material
  doc: 'Starting material. Possible values: rna, dna'
  type: string?
  inputBinding:
    prefix: --starting-material
- id: in_five_end
  doc: "5'-end of the library. Possible values: no-v-primers, v-primers"
  type: long?
  inputBinding:
    prefix: --5-end
- id: in_three_end
  doc: "3'-end of the library. Possible values: j-primers, j-c-intron-primers,"
  type: long?
  inputBinding:
    prefix: --3-end
- id: in_region_of_interest
  doc: "MiXCR will use only reads covering the whole target region; reads which\n\
    partially cover selected region will be dropped during clonotype assembly.\nAll\
    \ non-CDR3 options require long high-quality paired-end data. See https:\n//mixcr.readthedocs.io/en/master/geneFeatures.html\
    \ for details.\n"
  type: long?
  inputBinding:
    prefix: --region-of-interest
- id: in_data_dot
  doc: 'NOTE: this will substantially increase analysis time.'
  type: string
  inputBinding:
    position: 0
- id: in_c_primers
  doc: --adapters <adapters> Presence of PCR primers and/or adapter sequences. If
    sequences of primers
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite
  doc: Force overwrite of output file(s).
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite)
hints: []
cwlVersion: v1.1
baseCommand:
- mixcr
- analyze
- amplicon
