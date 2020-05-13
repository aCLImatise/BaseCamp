class: CommandLineTool
id: generate_BED_file_of_endpoints.py.cwl
inputs:
- id: genome
  doc: genome fasta file.
  type: string
  inputBinding:
    position: 0
- id: list_reads
  doc: File with list of reads and their fused positions.
  type: string
  inputBinding:
    position: 1
- id: track_name
  doc: Name of track
  type: string
  inputBinding:
    position: 2
- id: track_desc
  doc: Description of the track
  type: string
  inputBinding:
    position: 3
- id: bam_files
  doc: The original bam file (or several files) with the full reads.
  type: string
  inputBinding:
    position: 4
- id: reverse
  doc: 'The original bam file is the reverse complement of the RNA. (default: False)'
  type: boolean
  inputBinding:
    prefix: --reverse
- id: summary
  doc: 'Print only reads that are found to be significant in this summary file. (default:
    None)'
  type: string
  inputBinding:
    prefix: --summary
- id: gene_name
  doc: 'Print reads involve only this gene (EcoCyc ID), applies only with -s (default:
    None)'
  type: string
  inputBinding:
    prefix: --gene_name
- id: rand_score
  doc: 'Set a random score (0-1000) for each read, this will allow to present some
    of the reads in UCSC genome browser. (default: False)'
  type: boolean
  inputBinding:
    prefix: --rand_score
- id: pos_first
  doc: 'Color of first part, positive strand. (default: 255,0,0)'
  type: string
  inputBinding:
    prefix: --pos_first
- id: pos_second
  doc: 'Color of second part, positive strand. (default: 51,102,255)'
  type: string
  inputBinding:
    prefix: --pos_second
- id: rev_first
  doc: 'Color of first part, reverse strand. (default: 255,0,0)'
  type: string
  inputBinding:
    prefix: --rev_first
- id: rev_second
  doc: 'Color of second part, reverse strand. (default: 51,102,255)'
  type: string
  inputBinding:
    prefix: --rev_second
- id: bc_chr_list
  doc: 'A comma separated dictionary of chromosome names from the BioCyc names to
    the bam file names. The names in the bam file should be the same as the UCSC genome
    browser (they will be printed). (default: COLI-K12,chr)'
  type: string
  inputBinding:
    prefix: --BC_chrlist
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_BED_file_of_endpoints.py
