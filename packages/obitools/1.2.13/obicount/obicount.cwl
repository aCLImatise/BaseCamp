class: CommandLineTool
id: obicount.cwl
inputs:
- id: in_debug
  doc: Set logging in debug mode
  type: boolean
  inputBinding:
    prefix: --DEBUG
- id: in_without_progress_bar
  doc: desactivate progress bar
  type: boolean
  inputBinding:
    prefix: --without-progress-bar
- id: in_sequence
  doc: Prints only the number of sequence records.
  type: boolean
  inputBinding:
    prefix: --sequence
- id: in_all
  doc: "Prints only the total count of sequence records (if a\nsequence has no `count`\
    \ attribute, its default count\nis 1) (default: False)."
  type: boolean
  inputBinding:
    prefix: --all
- id: in_skip
  doc: skip the N first sequences
  type: string
  inputBinding:
    prefix: --skip
- id: in_only
  doc: treat only N sequences
  type: string
  inputBinding:
    prefix: --only
- id: in_genbank
  doc: Input file is in genbank format
  type: boolean
  inputBinding:
    prefix: --genbank
- id: in_embl
  doc: Input file is in embl format
  type: boolean
  inputBinding:
    prefix: --embl
- id: in_skip_on_error
  doc: Skip sequence entries with parse error
  type: boolean
  inputBinding:
    prefix: --skip-on-error
- id: in_fast_a
  doc: "Input file is in fasta nucleic format (including\nobitools fasta extentions)"
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_eco_pcr
  doc: Input file is in ecopcr format
  type: boolean
  inputBinding:
    prefix: --ecopcr
- id: in_raw_fast_a
  doc: "Input file is in fasta format (but more tolerant to\nformat variant)"
  type: boolean
  inputBinding:
    prefix: --raw-fasta
- id: in_sanger
  doc: "Input file is in sanger fastq nucleic format (standard\nfastq)"
  type: boolean
  inputBinding:
    prefix: --sanger
- id: in_solexa
  doc: "Input file is in fastq nucleic format produced by\nsolexa sequencer"
  type: boolean
  inputBinding:
    prefix: --solexa
- id: in_eco_pcr_db
  doc: Input file is an ecopcr database
  type: boolean
  inputBinding:
    prefix: --ecopcrdb
- id: in_nuc
  doc: Input file contains nucleic sequences
  type: boolean
  inputBinding:
    prefix: --nuc
- id: in_prot
  doc: Input file contains protein sequences
  type: boolean
  inputBinding:
    prefix: --prot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- obicount
