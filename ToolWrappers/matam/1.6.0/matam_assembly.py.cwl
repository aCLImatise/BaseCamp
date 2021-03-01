class: CommandLineTool
id: matam_assembly.py.cwl
inputs:
- id: in_input_fast_q
  doc: Input reads file (fasta or fastq format)
  type: File?
  inputBinding:
    prefix: --input_fastq
- id: in_ref_db
  doc: "MATAM ref db. Default is\n$MATAM_DIR/db/SILVA_128_SSURef_NR95"
  type: File?
  inputBinding:
    prefix: --ref_db
- id: in_out_dir
  doc: "Output directory.Default will be\n\"matam_assembly\""
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_verbose
  doc: Increase verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_cpu
  doc: Max number of CPU to use. Default is 1 cpu
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_max_memory
  doc: "Maximum memory to use (in MBi). Default is\n10000 MBi"
  type: long?
  inputBinding:
    prefix: --max_memory
- id: in_best
  doc: "Get up to --best good alignments per read.\nDefault is 10"
  type: long?
  inputBinding:
    prefix: --best
- id: in_evalue
  doc: "Max e-value to keep an alignment for. Default\nis 1e-05"
  type: long?
  inputBinding:
    prefix: --evalue
- id: in_score_threshold
  doc: "Score threshold (real between 0 and 1). Default\nis 0.9"
  type: double?
  inputBinding:
    prefix: --score_threshold
- id: in_straight_mode
  doc: "Use straight mode filtering. Default is\ngeometric mode"
  type: boolean?
  inputBinding:
    prefix: --straight_mode
- id: in_coverage_threshold
  doc: "Ref coverage threshold. By default set to 0 to\ndesactivate filtering"
  type: long?
  inputBinding:
    prefix: --coverage_threshold
- id: in_min_identity
  doc: "Minimum identity of an overlap between 2 reads.\nDefault is 1.0"
  type: double?
  inputBinding:
    prefix: --min_identity
- id: in_min_overlap_length
  doc: Minimum length of an overlap. Default is 50
  type: long?
  inputBinding:
    prefix: --min_overlap_length
- id: in_min_read_node
  doc: "Minimum number of read to keep a node. Default\nis 1"
  type: long?
  inputBinding:
    prefix: --min_read_node
- id: in_min_overlap_edge
  doc: "Minimum number of overlap to keep an edge.\nDefault is 1"
  type: long?
  inputBinding:
    prefix: --min_overlap_edge
- id: in_seed
  doc: "Seed to initialize random generator. Default is\npicking seed from system\
    \ time"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_quorum
  doc: "Quorum for LCA computing. Has to be between\n0.51 and 1. Default is 0.51"
  type: double?
  inputBinding:
    prefix: --quorum
- id: in_assembler
  doc: Select the assembler to be used. Default is SGA
  type: string?
  inputBinding:
    prefix: --assembler
- id: in_read_correction
  doc: "Set the assembler read correction step. 'auto'\nmeans assemble the components\
    \ with read\ncorrection enabled when the components coverage\nare sufficient (20X)\
    \ and assemble the other\ncomponents without read correction. Default is\nauto"
  type: string?
  inputBinding:
    prefix: --read_correction
- id: in_contigs_binning
  doc: Experimental. Perform contigs binning during
  type: boolean?
  inputBinding:
    prefix: --contigs_binning
- id: in_perform_taxonomic_assignment
  doc: Do the taxonomic assignment
  type: boolean?
  inputBinding:
    prefix: --perform_taxonomic_assignment
- id: in_training_model
  doc: "The training model used for taxonomic\nassignment. Default is 16srrna"
  type: string?
  inputBinding:
    prefix: --training_model
- id: in_rdp_cut_off
  doc: "Sequences assigned (by RDP) with a confidence\nscore < 0.8 (at genus level)\
    \ will be tagged as\nan artificial \"unclassified\" taxon"
  type: double?
  inputBinding:
    prefix: --rdp_cutoff
- id: in_keep_tmp
  doc: Do not remove tmp files
  type: boolean?
  inputBinding:
    prefix: --keep_tmp
- id: in_debug
  doc: Output debug infos
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_resume_from
  doc: "Try to resume from given step. Steps are:\nreads_mapping, alignments_filtering,\n\
    overlap_graph_building, graph_compaction,\ncontigs_assembly, scaffolding,\nabundance_calculation,\
    \ taxonomic_assignment"
  type: string?
  inputBinding:
    prefix: --resume_from
- id: in_filter_only
  doc: "Perform only the first step of MATAM (i.e Reads\nmapping against ref db with\
    \ sortmerna to filter\nthe reads). Relevant options for this step\ncorrespond\
    \ to the \"Read mapping\" section.\n"
  type: boolean?
  inputBinding:
    prefix: --filter_only
- id: in_scaffolding_dot
  doc: --min_scaffold_length MIN_SCAFFOLD_LENGTH                              Filter
    out small scaffolds
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: "Output directory.Default will be\n\"matam_assembly\""
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- matam_assembly.py
