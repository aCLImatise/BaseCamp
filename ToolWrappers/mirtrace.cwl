class: CommandLineTool
id: mirtrace.cwl
inputs:
- id: in_species
  doc: "Species (miRBase encoding). EXAMPLE: \"hsa\" for Homo sapiens.\nTo list all\
    \ codes, run \"miRTrace --list-species\"."
  type: boolean
  inputBinding:
    prefix: --species
- id: in_config
  doc: "List of FASTQ files to process. This is a CSV (comma separated\nvalue) file,\
    \ i.e. with one entry per row.\nEach row consists of the following columns\n(only\
    \ the first is required):\nfilename,name-displayed-in-report,adapter,PHRED-ASCII-offset\n\
    NOTE: the PHRED ASCII offset can typically be reliably\nauto-detected and is not\
    \ necessary to specify.\nEXAMPLE CONFIG FILE:\npath/sample1.fastq,sample 1 (control),TGGAATTC\n\
    path/sample2.fastq,sample 2 (+drug X),TGGAATTC"
  type: boolean
  inputBinding:
    prefix: --config
- id: in_adapter
  doc: '<DNA sequence>. [DEFAULT: none].'
  type: boolean
  inputBinding:
    prefix: --adapter
- id: in_protocol
  doc: "One of the following (read structure schematic in parens):\nillumina (miRNA--3'-adapter--index)\
    \ [DEFAULT]\nqiaseq (miRNA--3'-adapter--UMI--3'-adapter--index)\nNOTE: Only the\
    \ first (leftmost) 3' adapter should be specified.\ncats (NNN--miRNA--poly-A--3'-adapter--index)\n\
    NOTE: It's not possible to specify an adapter for -p cats.\nnextflex (NNNN--miRNA--NNNN--3'-adapter--index)"
  type: boolean
  inputBinding:
    prefix: --protocol
- id: in_output_dir
  doc: 'Directory for output files. [DEFAULT: <file listing>.output]'
  type: File
  inputBinding:
    prefix: --output-dir
- id: in_force
  doc: Overwrite output directory if it exists.
  type: Directory
  inputBinding:
    prefix: --force
- id: in_enable_pipes
  doc: "Enable support for named pipes (fifos) as input.\nNOTE: Requires a config\
    \ file with PHRED and adapter\ngiven for each entry. Input must not be compressed."
  type: boolean
  inputBinding:
    prefix: --enable-pipes
- id: in_write_fast_a
  doc: "Write QC-passed reads and unknown reads (as defined\nin the RNA type plot)\
    \ to the output folder.\nIdentical reads are collapsed. Entries are sorted by\
    \ abundance."
  type: Directory
  inputBinding:
    prefix: --write-fasta
- id: in_un_collapse_fast_a
  doc: Write one FASTA entry per original FASTQ entry.
  type: boolean
  inputBinding:
    prefix: --uncollapse-fasta
- id: in_title
  doc: Set the report title.
  type: boolean
  inputBinding:
    prefix: --title
- id: in_comment
  doc: "Add a comment to the generated report. Multiple\narguments can be given."
  type: boolean
  inputBinding:
    prefix: --comment
- id: in_num_threads
  doc: "Maximum number of processing threads to use.\n[DEFAULT: <number of virtual\
    \ cores>]"
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: in_verbosity_level
  doc: 'Level of detail for debug messages. [default: 1]'
  type: boolean
  inputBinding:
    prefix: --verbosity-level
- id: in_global_mem_reserve
  doc: "Amount of Java memory reserved for\n\"housekeeping\" tasks (in MB).\nIncrease\
    \ only if OutOfMemoryErrors are occurring.\nDecrease only if available system\
    \ memory is very low.\n[Current value: 400 MB]"
  type: boolean
  inputBinding:
    prefix: --global-mem-reserve
- id: in_custom_db_folder
  doc: Folder containing user-generated reference databases.
  type: boolean
  inputBinding:
    prefix: --custom-db-folder
- id: in_list_species
  doc: List all species that miRTrace has reference databases for.
  type: boolean
  inputBinding:
    prefix: --list-species
- id: in_cite
  doc: Show information about how to cite our paper.
  type: boolean
  inputBinding:
    prefix: --cite
- id: in_trace
  doc: miRNA trace mode. Produces a clade report. --species is ignored.
  type: string
  inputBinding:
    position: 0
- id: in_qc
  doc: Quality control mode (full set of reports). --species must be given.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Directory for output files. [DEFAULT: <file listing>.output]'
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_force
  doc: Overwrite output directory if it exists.
  type: Directory
  outputBinding:
    glob: $(inputs.in_force)
- id: out_write_fast_a
  doc: "Write QC-passed reads and unknown reads (as defined\nin the RNA type plot)\
    \ to the output folder.\nIdentical reads are collapsed. Entries are sorted by\
    \ abundance."
  type: Directory
  outputBinding:
    glob: $(inputs.in_write_fast_a)
cwlVersion: v1.1
baseCommand:
- mirtrace
