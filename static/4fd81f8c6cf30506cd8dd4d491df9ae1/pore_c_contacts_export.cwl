class: CommandLineTool
id: pore_c_contacts_export.cwl
inputs:
- id: in_min_mapping_quality
  doc: "Both alignments have mapping qualities\ngreater than this  [default: 0]"
  type: long?
  inputBinding:
    prefix: --min-mapping-quality
- id: in_min_align_base_q_score
  doc: "Both alignments have mean base qualities\ngreater than this  [default: 0]"
  type: long?
  inputBinding:
    prefix: --min-align-base-qscore
- id: in_cooler_resolution
  doc: "The bin width of the resulting matrix\n[default: 1000]"
  type: long?
  inputBinding:
    prefix: --cooler-resolution
- id: in_fragment_table
  doc: "The fragment table for the corresponding\nvirtual digest(required if export\
    \ format is\nin cooler)"
  type: string?
  inputBinding:
    prefix: --fragment-table
- id: in_by_haplotype
  doc: "Create a cooler for each pair of haplotypes\n(eg 1-1, 1-2, 2-2,...). Only\
    \ valid with\n'cooler'"
  type: boolean?
  inputBinding:
    prefix: --by-haplotype
- id: in_chrom_sizes
  doc: "The chromsizes file for the corresponding\ngenome(required if export format\
    \ is in\ncooler,pairs)"
  type: File?
  inputBinding:
    prefix: --chromsizes
- id: in_reference_fast_a
  doc: "The reference genome used to generate the\ncontact table(required if export\
    \ format is\nin paired_end_fastq,merged_no_dups)"
  type: string?
  inputBinding:
    prefix: --reference-fasta
- id: in_contact_table
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pore-c:0.3.0--py_0
cwlVersion: v1.1
baseCommand:
- pore_c
- contacts
- export
