class: CommandLineTool
id: obiextract.cwl
inputs:
- id: skip
  doc: skip the N first sequences
  type: string
  inputBinding:
    prefix: --skip
- id: only
  doc: treat only N sequences
  type: string
  inputBinding:
    prefix: --only
- id: genbank
  doc: Input file is in genbank format
  type: boolean
  inputBinding:
    prefix: --genbank
- id: embl
  doc: Input file is in embl format
  type: boolean
  inputBinding:
    prefix: --embl
- id: skip_on_error
  doc: Skip sequence entries with parse error
  type: boolean
  inputBinding:
    prefix: --skip-on-error
- id: fast_a
  doc: Input file is in fasta nucleic format (including obitools fasta extentions)
  type: boolean
  inputBinding:
    prefix: --fasta
- id: eco_pcr
  doc: Input file is in ecopcr format
  type: boolean
  inputBinding:
    prefix: --ecopcr
- id: raw_fast_a
  doc: Input file is in fasta format (but more tolerant to format variant)
  type: boolean
  inputBinding:
    prefix: --raw-fasta
- id: sanger
  doc: Input file is in sanger fastq nucleic format (standard fastq)
  type: boolean
  inputBinding:
    prefix: --sanger
- id: solexa
  doc: Input file is in fastq nucleic format produced by solexa sequencer
  type: boolean
  inputBinding:
    prefix: --solexa
- id: eco_pcr_db
  doc: Input file is an ecopcr database
  type: boolean
  inputBinding:
    prefix: --ecopcrdb
- id: nuc
  doc: Input file contains nucleic sequences
  type: boolean
  inputBinding:
    prefix: --nuc
- id: prot
  doc: Input file contains protein sequences
  type: boolean
  inputBinding:
    prefix: --prot
- id: fast_a_output
  doc: Output sequences in obitools fasta format
  type: boolean
  inputBinding:
    prefix: --fasta-output
- id: fast_q_output
  doc: Output sequences in sanger fastq format
  type: boolean
  inputBinding:
    prefix: --fastq-output
- id: eco_pcr_db_output
  doc: Output sequences in ecopcr database format (sequence records are not printed
    on standard output)
  type: string
  inputBinding:
    prefix: --ecopcrdb-output
- id: uppercase
  doc: Print sequences in upper case (default is lower case)
  type: boolean
  inputBinding:
    prefix: --uppercase
outputs: []
cwlVersion: v1.1
baseCommand:
- obiextract
