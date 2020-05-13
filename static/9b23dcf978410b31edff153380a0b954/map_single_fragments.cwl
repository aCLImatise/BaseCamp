class: CommandLineTool
id: map_single_fragments.py.cwl
inputs:
- id: genome_fast_a
  doc: Name of genome fasta file. The file must be indexed usingbwa index command
    prior to this run.
  type: string
  inputBinding:
    position: 0
- id: genes_gff
  doc: 'Name of gff file to count the reads per gene. If not given or not readable,
    skip this stage. (default: None)'
  type: string
  inputBinding:
    prefix: --genes_gff
- id: reverse_complement
  doc: "Treat the reads as reverse complement only when counting number of reads per\
    \ gene and generating wig file. The resulting BAM files will be the original ones.\
    \ Use this when treating libraries built using Livny's protocol. (default: False)"
  type: boolean
  inputBinding:
    prefix: --reverse_complement
- id: feature
  doc: 'Name of features to count on the GTF file (column 2). (default: exon)'
  type: string
  inputBinding:
    prefix: --feature
- id: identifier
  doc: 'Name of identifier to print (in column 8 of the GTF file). (default: gene_id)'
  type: string
  inputBinding:
    prefix: --identifier
- id: overlap
  doc: 'Minimal required overlap between the fragment and the feature. (default: 5)'
  type: string
  inputBinding:
    prefix: --overlap
- id: allowed_mismatches
  doc: 'Allowed mismatches for BWA mapping. (default: 2)'
  type: string
  inputBinding:
    prefix: --allowed_mismatches
- id: out_head
  doc: 'Output file names of counts table (suffixed _counts.txt) and wiggle file (suffixed
    _coverage.wig) (default: bwa_mapped_single_reads)'
  type: string
  inputBinding:
    prefix: --outhead
- id: dir_out
  doc: 'Output directory, default is this directory. (default: .)'
  type: string
  inputBinding:
    prefix: --dirout
- id: bwa_exec
  doc: 'bwa command (default: bwa)'
  type: string
  inputBinding:
    prefix: --bwa_exec
- id: sam_tools_cmd
  doc: 'Samtools executable. (default: samtools)'
  type: string
  inputBinding:
    prefix: --samtools_cmd
- id: params_aln
  doc: 'Additional parameters for aln function of bwa. (default: -t 8 -R 200)'
  type: string
  inputBinding:
    prefix: --params_aln
- id: sampe_params
  doc: 'Additional parameters for sampe function of bwa. (default: -a 1500 -P)'
  type: string
  inputBinding:
    prefix: --sampe_params
- id: sam_se_params
  doc: 'Additional parameters for samse function of bwa. (default: )'
  type: string
  inputBinding:
    prefix: --samse_params
- id: create_wig
  doc: 'Create a coverage wiggle file. (default: False)'
  type: boolean
  inputBinding:
    prefix: --create_wig
outputs: []
cwlVersion: v1.1
baseCommand:
- map_single_fragments.py
