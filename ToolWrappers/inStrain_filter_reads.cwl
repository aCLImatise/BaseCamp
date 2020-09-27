class: CommandLineTool
id: inStrain_filter_reads.cwl
inputs:
- id: in_output
  doc: "Location of folder to store read report(s) (default:\nNone)"
  type: Directory
  inputBinding:
    prefix: --output
- id: in_processes
  doc: 'Number of processes to use (default: 6)'
  type: long
  inputBinding:
    prefix: --processes
- id: in_debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_filter_cut_off
  doc: "Minimum percent identity of read pairs to consensus to\nuse the reads. Must\
    \ be >, not >= (default: 0.95)"
  type: double
  inputBinding:
    prefix: --filter_cutoff
- id: in_min_mapq
  doc: "Minimum mapq score of EITHER read in a pair to use\nthat pair. Must be >,\
    \ not >= (default: -1)"
  type: long
  inputBinding:
    prefix: --min_mapq
- id: in_max_insert_relative
  doc: "Multiplier to determine maximum insert size between\ntwo reads - default is\
    \ to use 3x median insert size.\nMust be >, not >= (default: 3)"
  type: long
  inputBinding:
    prefix: --max_insert_relative
- id: in_min_insert
  doc: "Minimum insert size between two reads - default is 50\nbp. If two reads are\
    \ 50bp each and overlap completely,\ntheir insert will be 50. Must be >, not >=\
    \ (default:\n50)"
  type: long
  inputBinding:
    prefix: --min_insert
- id: in_pairing_filter
  doc: "How should paired reads be handled?\npaired_only = Only paired reads are retained\n\
    non_discordant = Keep all paired reads and singleton reads that map to a single\
    \ scaffold\nall_reads = Keep all reads regardless of pairing status (NOT RECOMMENDED;\
    \ See documentation for deatils)\n(default: paired_only)"
  type: string
  inputBinding:
    prefix: --pairing_filter
- id: in_priority_reads
  doc: "The location of a list of reads that should be\nretained regardless of pairing\
    \ status (for example\nlong reads or merged reads). This can be a .fastq file\n\
    or text file with list of read names (will assume file\nis compressed if ends\
    \ in .gz (default: None)"
  type: File
  inputBinding:
    prefix: --priority_reads
- id: in_scaffold_level_read_report
  doc: "Store read filtering info for each scaffold (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --scaffold_level_read_report
- id: in_de_a_tiled_read_report
  doc: "Make a detailed read report indicating deatils about\neach individual mapped\
    \ read (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --deatiled_read_report
- id: in_bam
  doc: Sorted .bam file
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
  doc: Fasta file the bam is mapped to
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- inStrain
- filter_reads
