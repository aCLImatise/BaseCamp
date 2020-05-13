class: CommandLineTool
id: inStrain_filter_reads.cwl
inputs:
- id: bam
  doc: Sorted .bam file
  type: string
  inputBinding:
    position: 0
- id: fast_a
  doc: Fasta file the bam is mapped to
  type: string
  inputBinding:
    position: 1
- id: output
  doc: 'Location of folder to store read report(s) (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: processes
  doc: 'Number of processes to use (default: 6)'
  type: string
  inputBinding:
    prefix: --processes
- id: debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: filter_cut_off
  doc: 'Minimum percent identity of read pairs to consensus to use the reads. Must
    be >, not >= (default: 0.95)'
  type: string
  inputBinding:
    prefix: --filter_cutoff
- id: min_mapq
  doc: 'Minimum mapq score of EITHER read in a pair to use that pair. Must be >, not
    >= (default: -1)'
  type: long
  inputBinding:
    prefix: --min_mapq
- id: max_insert_relative
  doc: 'Multiplier to determine maximum insert size between two reads - default is
    to use 3x median insert size. Must be >, not >= (default: 3)'
  type: long
  inputBinding:
    prefix: --max_insert_relative
- id: min_insert
  doc: 'Minimum insert size between two reads - default is 50 bp. If two reads are
    50bp each and overlap completely, their insert will be 50. Must be >, not >= (default:
    50)'
  type: long
  inputBinding:
    prefix: --min_insert
- id: pairing_filter
  doc: 'How should paired reads be handled? paired_only = Only paired reads are retained
    non_discordant = Keep all paired reads and singleton reads that map to a single
    scaffold all_reads = Keep all reads regardless of pairing status (NOT RECOMMENDED;
    See documentation for deatils) (default: paired_only)'
  type: string
  inputBinding:
    prefix: --pairing_filter
- id: priority_reads
  doc: 'The location of a list of reads that should be retained regardless of pairing
    status (for example long reads or merged reads). This can be a .fastq file or
    text file with list of read names (will assume file is compressed if ends in .gz
    (default: None)'
  type: string
  inputBinding:
    prefix: --priority_reads
- id: scaffold_level_read_report
  doc: 'Store read filtering info for each scaffold (default: False)'
  type: boolean
  inputBinding:
    prefix: --scaffold_level_read_report
- id: de_a_tiled_read_report
  doc: 'Make a detailed read report indicating deatils about each individual mapped
    read (default: False)'
  type: boolean
  inputBinding:
    prefix: --deatiled_read_report
outputs: []
cwlVersion: v1.1
baseCommand:
- inStrain
- filter_reads
