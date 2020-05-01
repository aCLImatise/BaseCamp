#!/usr/bin/env cwl-runner

baseCommand:
- matam_assembly.py
class: CommandLineTool
cwlVersion: v1.0
id: matam_assembly.py
inputs:
- doc: Input reads file (fasta or fastq format)
  id: input_fast_q
  inputBinding:
    prefix: --input_fastq
  type: string
- doc: MATAM ref db. Default is $MATAM_DIR/db/SILVA_128_SSURef_NR95
  id: ref_db
  inputBinding:
    prefix: --ref_db
  type: string
- doc: Output directory.Default will be "matam_assembly"
  id: out_dir
  inputBinding:
    prefix: --out_dir
  type: string
- doc: Increase verbosity
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Max number of CPU to use. Default is 1 cpu
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
- doc: Maximum memory to use (in MBi). Default is 10000 MBi
  id: max_memory
  inputBinding:
    prefix: --max_memory
  type: long
- doc: Get up to --best good alignments per read. Default is 10
  id: best
  inputBinding:
    prefix: --best
  type: long
- doc: Max e-value to keep an alignment for. Default is 1e-05
  id: evalue
  inputBinding:
    prefix: --evalue
  type: string
- doc: Score threshold (real between 0 and 1). Default is 0.9
  id: score_threshold
  inputBinding:
    prefix: --score_threshold
  type: string
- doc: Use straight mode filtering. Default is geometric mode
  id: straight_mode
  inputBinding:
    prefix: --straight_mode
  type: boolean
- doc: Ref coverage threshold. By default set to 0 to desactivate filtering
  id: coverage_threshold
  inputBinding:
    prefix: --coverage_threshold
  type: long
- doc: Minimum identity of an overlap between 2 reads. Default is 1.0
  id: min_identity
  inputBinding:
    prefix: --min_identity
  type: string
- doc: Minimum length of an overlap. Default is 50
  id: min_overlap_length
  inputBinding:
    prefix: --min_overlap_length
  type: long
- doc: Minimum number of read to keep a node. Default is 1
  id: min_read_node
  inputBinding:
    prefix: --min_read_node
  type: long
- doc: Minimum number of overlap to keep an edge. Default is 1
  id: min_overlap_edge
  inputBinding:
    prefix: --min_overlap_edge
  type: long
- doc: Seed to initialize random generator. Default is picking seed from system time
  id: seed
  inputBinding:
    prefix: --seed
  type: long
- doc: Quorum for LCA computing. Has to be between 0.51 and 1. Default is 0.51
  id: quorum
  inputBinding:
    prefix: --quorum
  type: double
- doc: Select the assembler to be used. Default is SGA
  id: assembler
  inputBinding:
    prefix: --assembler
  type: string
- doc: Set the assembler read correction step. 'auto' means assemble the components
    with read correction enabled when the components coverage are sufficient (20X)
    and assemble the other components without read correction. Default is auto
  id: read_correction
  inputBinding:
    prefix: --read_correction
  type: string
- doc: Experimental. Perform contigs binning during scaffolding.
  id: contigs_binning
  inputBinding:
    prefix: --contigs_binning
  type: boolean
- doc: Filter out small scaffolds
  id: min_scaffold_length
  inputBinding:
    prefix: --min_scaffold_length
  type: long
- doc: Do the taxonomic assignment
  id: perform_taxonomic_assignment
  inputBinding:
    prefix: --perform_taxonomic_assignment
  type: boolean
- doc: '{16srrna,fungallsu,fungalits_warcup,fungalits_unite}  The training model used
    for taxonomic assignment. Default is 16srrna'
  id: training_model
  inputBinding:
    prefix: --training_model
  type: boolean
- doc: Sequences assigned (by RDP) with a confidence score < 0.8 (at genus level)
    will be tagged as an artificial "unclassified" taxon
  id: rdp_cut_off
  inputBinding:
    prefix: --rdp_cutoff
  type: string
- doc: Do not remove tmp files
  id: keep_tmp
  inputBinding:
    prefix: --keep_tmp
  type: boolean
- doc: Output debug infos
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: 'Try to resume from given step. Steps are: reads_mapping, alignments_filtering,
    overlap_graph_building, graph_compaction, contigs_assembly, scaffolding, abundance_calculation,
    taxonomic_assignment'
  id: resume_from
  inputBinding:
    prefix: --resume_from
  type: string
- doc: Perform only the first step of MATAM (i.e Reads mapping against ref db with
    sortmerna to filter the reads). Relevant options for this step correspond to the
    "Read mapping" section.
  id: filter_only
  inputBinding:
    prefix: --filter_only
  type: boolean
