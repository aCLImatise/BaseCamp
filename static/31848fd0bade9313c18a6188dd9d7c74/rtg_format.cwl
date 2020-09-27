class: CommandLineTool
id: rtg_format.cwl
inputs:
- id: in_format
  doc: "format of input. Allowed values are [fasta,\nfastq, fastq-interleaved, sam-se,\
    \ sam-pe]\n(Default is fasta)"
  type: string
  inputBinding:
    prefix: --format
- id: in_input_list_file
  doc: "file containing a list of input read files (1\nper line)"
  type: File
  inputBinding:
    prefix: --input-list-file
- id: in_left
  doc: left input file for FASTA/FASTQ paired end
  type: File
  inputBinding:
    prefix: --left
- id: in_protein
  doc: "input is protein. If this option is not\nspecified, then the input is assumed\
    \ to\nconsist of nucleotides"
  type: boolean
  inputBinding:
    prefix: --protein
- id: in_quality_format
  doc: "quality data encoding method used in FASTQ\ninput files (Illumina 1.8+ uses\
    \ sanger).\nAllowed values are [sanger, solexa, illumina]\n(Default is sanger)"
  type: double
  inputBinding:
    prefix: --quality-format
- id: in_right
  doc: right input file for FASTA/FASTQ paired end
  type: File
  inputBinding:
    prefix: --right
- id: in_duster
  doc: treat lower case residues as unknowns
  type: boolean
  inputBinding:
    prefix: --duster
- id: in_exclude
  doc: "exclude input sequences based on their name.\nIf the input sequence contains\
    \ the specified\nstring then that sequence is excluded from the\nSDF. May be specified\
    \ 0 or more times"
  type: string
  inputBinding:
    prefix: --exclude
- id: in_select_read_group
  doc: "when formatting from SAM/BAM input, only\ninclude reads with this read group\
    \ ID"
  type: string
  inputBinding:
    prefix: --select-read-group
- id: in_trim_threshold
  doc: "trim read ends to maximise base quality above\nthe given threshold"
  type: long
  inputBinding:
    prefix: --trim-threshold
- id: in_allow_duplicate_names
  doc: disable checking for duplicate sequence names
  type: boolean
  inputBinding:
    prefix: --allow-duplicate-names
- id: in_no_names
  doc: do not include name data in the SDF output
  type: boolean
  inputBinding:
    prefix: --no-names
- id: in_no_quality
  doc: do not include quality data in the SDF output
  type: boolean
  inputBinding:
    prefix: --no-quality
- id: in_sam_rg
  doc: "|FILE       file containing a single valid read group SAM\nheader line or\
    \ a string in the form\n\"@RG\\tID:READGROUP1\\tSM:BACT_SAMPLE\\tPL:ILLUMINA\"\
    \n"
  type: File
  inputBinding:
    prefix: --sam-rg
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rtg
- format
