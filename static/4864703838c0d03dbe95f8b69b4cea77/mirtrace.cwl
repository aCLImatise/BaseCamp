class: CommandLineTool
id: mirtrace.cwl
inputs:
- id: trace
  doc: miRNA trace mode. Produces a clade report. --species is ignored.
  type: string
  inputBinding:
    position: 0
- id: qc
  doc: Quality control mode (full set of reports). --species must be given.
  type: string
  inputBinding:
    position: 1
- id: species
  doc: 'Species (miRBase encoding). EXAMPLE: "hsa" for Homo sapiens. To list all codes,
    run "miRTrace --list-species".'
  type: boolean
  inputBinding:
    prefix: --species
- id: config
  doc: 'List of FASTQ files to process. This is a CSV (comma separated value) file,
    i.e. with one entry per row. Each row consists of the following columns (only
    the first is required): filename,name-displayed-in-report,adapter,PHRED-ASCII-offset
    NOTE: the PHRED ASCII offset can typically be reliably auto-detected and is not
    necessary to specify. EXAMPLE CONFIG FILE: path/sample1.fastq,sample 1 (control),TGGAATTC
    path/sample2.fastq,sample 2 (+drug X),TGGAATTC'
  type: boolean
  inputBinding:
    prefix: --config
- id: adapter
  doc: '<DNA sequence>. [DEFAULT: none].'
  type: boolean
  inputBinding:
    prefix: --adapter
- id: protocol
  doc: "One of the following (read structure schematic in parens): illumina (miRNA--3'-adapter--index)\
    \ [DEFAULT] qiaseq (miRNA--3'-adapter--UMI--3'-adapter--index) NOTE: Only the\
    \ first (leftmost) 3' adapter should be specified. cats (NNN--miRNA--poly-A--3'-adapter--index)\
    \ NOTE: It's not possible to specify an adapter for -p cats. nextflex (NNNN--miRNA--NNNN--3'-adapter--index)"
  type: boolean
  inputBinding:
    prefix: --protocol
- id: output_dir
  doc: 'Directory for output files. [DEFAULT: <file listing>.output]'
  type: boolean
  inputBinding:
    prefix: --output-dir
- id: force
  doc: Overwrite output directory if it exists.
  type: boolean
  inputBinding:
    prefix: --force
- id: enable_pipes
  doc: 'Enable support for named pipes (fifos) as input. NOTE: Requires a config file
    with PHRED and adapter given for each entry. Input must not be compressed.'
  type: boolean
  inputBinding:
    prefix: --enable-pipes
- id: write_fast_a
  doc: Write QC-passed reads and unknown reads (as defined in the RNA type plot) to
    the output folder. Identical reads are collapsed. Entries are sorted by abundance.
  type: boolean
  inputBinding:
    prefix: --write-fasta
- id: un_collapse_fast_a
  doc: Write one FASTA entry per original FASTQ entry.
  type: boolean
  inputBinding:
    prefix: --uncollapse-fasta
- id: title
  doc: Set the report title.
  type: boolean
  inputBinding:
    prefix: --title
- id: comment
  doc: Add a comment to the generated report. Multiple arguments can be given.
  type: boolean
  inputBinding:
    prefix: --comment
- id: num_threads
  doc: 'Maximum number of processing threads to use. [DEFAULT: <number of virtual
    cores>]'
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: verbosity_level
  doc: 'Level of detail for debug messages. [default: 1]'
  type: boolean
  inputBinding:
    prefix: --verbosity-level
- id: global_mem_reserve
  doc: 'Amount of Java memory reserved for  "housekeeping" tasks (in MB). Increase
    only if OutOfMemoryErrors are occurring. Decrease only if available system memory
    is very low. [Current value: 400 MB]'
  type: boolean
  inputBinding:
    prefix: --global-mem-reserve
- id: custom_db_folder
  doc: Folder containing user-generated reference databases.
  type: boolean
  inputBinding:
    prefix: --custom-db-folder
- id: list_species
  doc: List all species that miRTrace has reference databases for.
  type: boolean
  inputBinding:
    prefix: --list-species
- id: cite
  doc: Show information about how to cite our paper.
  type: boolean
  inputBinding:
    prefix: --cite
outputs: []
cwlVersion: v1.1
baseCommand:
- mirtrace
