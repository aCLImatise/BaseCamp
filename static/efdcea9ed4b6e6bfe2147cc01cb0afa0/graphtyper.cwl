class: CommandLineTool
id: graphtyper.cwl
inputs:
- id: in_log
  doc: "or -lvalue\nSet path to log file."
  type: File?
  inputBinding:
    prefix: --log
- id: in_verbose
  doc: Set to output verbose logging.
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_v_verbose
  doc: Set to output very verbose logging.
  type: boolean?
  inputBinding:
    prefix: --vverbose
- id: in_graph_type_r
  doc: USAGE
  type: string
  inputBinding:
    position: 0
- id: in_bam_shrink
  doc: Run bamShrink.
  type: string
  inputBinding:
    position: 0
- id: in_call
  doc: Call variants of a graph.
  type: string
  inputBinding:
    position: 1
- id: in_check
  doc: Check a GraphTyper graph (useful for debugging).
  type: string
  inputBinding:
    position: 2
- id: in_construct
  doc: Construct a graph.
  type: string
  inputBinding:
    position: 3
- id: in_discover
  doc: Discover variants from SAM/BAM/CRAMs.
  type: string
  inputBinding:
    position: 4
- id: in_discovery_vcf
  doc: Create a VCF with discovered variants.
  type: string
  inputBinding:
    position: 5
- id: in_genotype
  doc: Run the SNP/indel genotyping pipeline.
  type: string
  inputBinding:
    position: 6
- id: in_genotype_camo_u
  doc: (WIP) Run the camou SNP/indel genotyping pipeline.
  type: string
  inputBinding:
    position: 7
- id: in_genotype_sv
  doc: Run the structural variant (SV) genotyping pipeline.
  type: string
  inputBinding:
    position: 8
- id: in_haplotypes
  doc: Create a VCF from genotyped haplotypes.
  type: string
  inputBinding:
    position: 9
- id: in_index
  doc: (deprecated) Index a graph.
  type: string
  inputBinding:
    position: 10
- id: in_vcf_break_down
  doc: Break down/decompose a VCF file.
  type: string
  inputBinding:
    position: 11
- id: in_vcf_merge
  doc: Merge VCF files.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- graphtyper
