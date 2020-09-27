class: CommandLineTool
id: singlem_appraise.cwl
inputs:
- id: in_meta_genome_otu_tables
  doc: "[--genome_otu_tables GENOME_OTU_TABLES [GENOME_OTU_TABLES ...]]\n[--assembly_otu_tables\
    \ ASSEMBLY_OTU_TABLES [ASSEMBLY_OTU_TABLES ...]]\n[--imperfect] [--sequence_identity\
    \ SEQUENCE_IDENTITY]\n[--plot PLOT] [--plot_marker PLOT_MARKER]\n[--plot_basename\
    \ PLOT_BASENAME]\n[--output_binned_otu_table OUTPUT_BINNED_OTU_TABLE]\n[--output_unbinned_otu_table\
    \ OUTPUT_UNBINNED_OTU_TABLE]\n[--output_assembled_otu_table OUTPUT_ASSEMBLED_OTU_TABLE]\n\
    [--output_unaccounted_for_otu_table OUTPUT_UNACCOUNTED_FOR_OTU_TABLE]"
  type: string[]
  inputBinding:
    prefix: --metagenome_otu_tables
- id: in_full_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --full_help
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- singlem
- appraise
