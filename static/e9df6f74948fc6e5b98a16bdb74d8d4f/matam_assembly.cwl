class: CommandLineTool
id: matam_assembly.py.cwl
inputs:
- id: input_fast_q
  doc: Input reads file (fasta or fastq format)
  type: string
  inputBinding:
    prefix: --input_fastq
- id: ref_db
  doc: MATAM ref db. Default is $MATAM_DIR/db/SILVA_128_SSURef_NR95
  type: string
  inputBinding:
    prefix: --ref_db
- id: out_dir
  doc: Output directory.Default will be "matam_assembly"
  type: string
  inputBinding:
    prefix: --out_dir
- id: verbose
  doc: Increase verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: cpu
  doc: Max number of CPU to use. Default is 1 cpu
  type: string
  inputBinding:
    prefix: --cpu
- id: max_memory
  doc: Maximum memory to use (in MBi). Default is 10000 MBi
  type: long
  inputBinding:
    prefix: --max_memory
- id: best
  doc: Get up to --best good alignments per read. Default is 10
  type: long
  inputBinding:
    prefix: --best
- id: evalue
  doc: Max e-value to keep an alignment for. Default is 1e-05
  type: string
  inputBinding:
    prefix: --evalue
- id: score_threshold
  doc: Score threshold (real between 0 and 1). Default is 0.9
  type: string
  inputBinding:
    prefix: --score_threshold
- id: straight_mode
  doc: Use straight mode filtering. Default is geometric mode
  type: boolean
  inputBinding:
    prefix: --straight_mode
- id: coverage_threshold
  doc: Ref coverage threshold. By default set to 0 to desactivate filtering
  type: long
  inputBinding:
    prefix: --coverage_threshold
- id: min_identity
  doc: Minimum identity of an overlap between 2 reads. Default is 1.0
  type: string
  inputBinding:
    prefix: --min_identity
- id: min_overlap_length
  doc: Minimum length of an overlap. Default is 50
  type: long
  inputBinding:
    prefix: --min_overlap_length
- id: min_read_node
  doc: Minimum number of read to keep a node. Default is 1
  type: long
  inputBinding:
    prefix: --min_read_node
- id: min_overlap_edge
  doc: Minimum number of overlap to keep an edge. Default is 1
  type: long
  inputBinding:
    prefix: --min_overlap_edge
- id: seed
  doc: Seed to initialize random generator. Default is picking seed from system time
  type: long
  inputBinding:
    prefix: --seed
- id: quorum
  doc: Quorum for LCA computing. Has to be between 0.51 and 1. Default is 0.51
  type: double
  inputBinding:
    prefix: --quorum
- id: assembler
  doc: Select the assembler to be used. Default is SGA
  type: string
  inputBinding:
    prefix: --assembler
- id: read_correction
  doc: Set the assembler read correction step. 'auto' means assemble the components
    with read correction enabled when the components coverage are sufficient (20X)
    and assemble the other components without read correction. Default is auto
  type: string
  inputBinding:
    prefix: --read_correction
- id: contigs_binning
  doc: Experimental. Perform contigs binning during scaffolding.
  type: boolean
  inputBinding:
    prefix: --contigs_binning
- id: min_scaffold_length
  doc: Filter out small scaffolds
  type: long
  inputBinding:
    prefix: --min_scaffold_length
- id: perform_taxonomic_assignment
  doc: Do the taxonomic assignment
  type: boolean
  inputBinding:
    prefix: --perform_taxonomic_assignment
- id: training_model
  doc: '{16srrna,fungallsu,fungalits_warcup,fungalits_unite}  The training model used
    for taxonomic assignment. Default is 16srrna'
  type: boolean
  inputBinding:
    prefix: --training_model
- id: rdp_cut_off
  doc: Sequences assigned (by RDP) with a confidence score < 0.8 (at genus level)
    will be tagged as an artificial "unclassified" taxon
  type: string
  inputBinding:
    prefix: --rdp_cutoff
- id: keep_tmp
  doc: Do not remove tmp files
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: debug
  doc: Output debug infos
  type: boolean
  inputBinding:
    prefix: --debug
- id: resume_from
  doc: 'Try to resume from given step. Steps are: reads_mapping, alignments_filtering,
    overlap_graph_building, graph_compaction, contigs_assembly, scaffolding, abundance_calculation,
    taxonomic_assignment'
  type: string
  inputBinding:
    prefix: --resume_from
- id: filter_only
  doc: Perform only the first step of MATAM (i.e Reads mapping against ref db with
    sortmerna to filter the reads). Relevant options for this step correspond to the
    "Read mapping" section.
  type: boolean
  inputBinding:
    prefix: --filter_only
outputs: []
cwlVersion: v1.1
baseCommand:
- matam_assembly.py
