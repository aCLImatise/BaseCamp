class: CommandLineTool
id: startAlign.pl.cwl
inputs:
- id: in_genome
  doc: fasta file with DNA sequences
  type: File?
  inputBinding:
    prefix: --genome
- id: in_prot
  doc: fasta file with protein sequences
  type: File?
  inputBinding:
    prefix: --prot
- id: in_cpu
  doc: Specifies the maximum number of CPUs that can be used during
  type: long?
  inputBinding:
    prefix: --CPU
- id: in_dir
  doc: /to/dir            Set path to working directory. In the working directory
    results
  type: File?
  inputBinding:
    prefix: --dir
- id: in_list
  doc: 'Contains contig and protein ID. Format: contigID proteinID'
  type: string?
  inputBinding:
    prefix: --list
- id: in_log
  doc: Log file
  type: File?
  inputBinding:
    prefix: --log
- id: in_max_intron_len
  doc: 'Exonerate option: Alignments with longer gaps are discarded (default 30000).'
  type: long?
  inputBinding:
    prefix: --maxintronlen
- id: in_reg
  doc: Use region parts and not whole sequences.
  type: boolean?
  inputBinding:
    prefix: --reg
- id: in_offset
  doc: This many bp are added before and after cutout coordinates.
  type: string?
  inputBinding:
    prefix: --offset
- id: in_prg
  doc: Alignment program to call. Valid options are 'gth', 'spaln' or 'exonerate'.
  type: string?
  inputBinding:
    prefix: --prg
- id: in_pos
  doc: Contains information on contigs and genome sequence. Format
  type: string?
  inputBinding:
    prefix: --pos
- id: in_alignment_tool_path
  doc: =/path/to/binary
  type: boolean?
  inputBinding:
    prefix: --ALIGNMENT_TOOL_PATH
- id: in_args
  doc: "additional command line parameters for alignment tool to be executed,\nexample:\
    \ --args=\"-prinmatchlen 24 -prseedlength 10 -prhdist 4\""
  type: long?
  inputBinding:
    prefix: --args
- id: in_nice
  doc: Execute all system calls within braker.pl and its submodules with bash "nice"
  type: boolean?
  inputBinding:
    prefix: --nice
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/braker2:2.1.6--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- startAlign.pl
