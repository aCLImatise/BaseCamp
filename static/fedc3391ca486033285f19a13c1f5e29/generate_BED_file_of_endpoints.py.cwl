class: CommandLineTool
id: generate_BED_file_of_endpoints.py.cwl
inputs:
- id: in_reverse
  doc: "The original bam file is the reverse complement of the\nRNA. (default: False)"
  type: boolean
  inputBinding:
    prefix: --reverse
- id: in_summary
  doc: "Print only reads that are found to be significant in\nthis summary file. (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --summary
- id: in_gene_name
  doc: "Print reads involve only this gene (EcoCyc ID),\napplies only with -s (default:\
    \ None)"
  type: string
  inputBinding:
    prefix: --gene_name
- id: in_rand_score
  doc: "Set a random score (0-1000) for each read, this will\nallow to present some\
    \ of the reads in UCSC genome\nbrowser. (default: False)"
  type: boolean
  inputBinding:
    prefix: --rand_score
- id: in_pos_first
  doc: "Color of first part, positive strand. (default:\n255,0,0)"
  type: long
  inputBinding:
    prefix: --pos_first
- id: in_pos_second
  doc: "Color of second part, positive strand. (default:\n51,102,255)"
  type: long
  inputBinding:
    prefix: --pos_second
- id: in_rev_first
  doc: "Color of first part, reverse strand. (default:\n255,0,0)"
  type: long
  inputBinding:
    prefix: --rev_first
- id: in_rev_second
  doc: "Color of second part, reverse strand. (default:\n51,102,255)"
  type: long
  inputBinding:
    prefix: --rev_second
- id: in_bc_chr_list
  doc: "A comma separated dictionary of chromosome names from\nthe BioCyc names to\
    \ the bam file names. The names in\nthe bam file should be the same as the UCSC\
    \ genome\nbrowser (they will be printed). (default:\nCOLI-K12,chr)\n"
  type: File
  inputBinding:
    prefix: --BC_chrlist
- id: in_genome
  doc: genome fasta file.
  type: string
  inputBinding:
    position: 0
- id: in_list_reads
  doc: File with list of reads and their fused positions.
  type: string
  inputBinding:
    position: 1
- id: in_track_name
  doc: Name of track
  type: string
  inputBinding:
    position: 2
- id: in_track_desc
  doc: Description of the track
  type: string
  inputBinding:
    position: 3
- id: in_bam_files
  doc: The original bam file (or several files) with the full
  type: string
  inputBinding:
    position: 4
- id: in_reads_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- generate_BED_file_of_endpoints.py
