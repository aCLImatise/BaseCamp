class: CommandLineTool
id: obiclean.cwl
inputs:
- id: in_debug
  doc: Set logging in debug mode
  type: boolean?
  inputBinding:
    prefix: --DEBUG
- id: in_without_progress_bar
  doc: desactivate progress bar
  type: boolean?
  inputBinding:
    prefix: --without-progress-bar
- id: in__distancemaximum_numbers
  doc: "###, --distance=###\nMaximum numbers of errors between two variant\nsequences\
    \ [default: 1]"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_sample
  doc: Tag containing sample descriptions
  type: string?
  inputBinding:
    prefix: --sample
- id: in_graph
  doc: File name where the clustering graphs are saved
  type: File?
  inputBinding:
    prefix: --graph
- id: in_ratio
  doc: "Minimum ratio between counts of two sequence records\nso that the less abundant\
    \ one can be considered as a\nvariant of the more abundant [default: 0.5]"
  type: double?
  inputBinding:
    prefix: --ratio
- id: in_head
  doc: Outputs only head tagged sequence records
  type: boolean?
  inputBinding:
    prefix: --head
- id: in_cluster
  doc: Set obiclean in clustering mode
  type: boolean?
  inputBinding:
    prefix: --cluster
- id: in_skip
  doc: skip the N first sequences
  type: string?
  inputBinding:
    prefix: --skip
- id: in_only
  doc: treat only N sequences
  type: string?
  inputBinding:
    prefix: --only
- id: in_genbank
  doc: Input file is in genbank format
  type: boolean?
  inputBinding:
    prefix: --genbank
- id: in_embl
  doc: Input file is in embl format
  type: boolean?
  inputBinding:
    prefix: --embl
- id: in_skip_on_error
  doc: Skip sequence entries with parse error
  type: boolean?
  inputBinding:
    prefix: --skip-on-error
- id: in_fast_a
  doc: "Input file is in fasta nucleic format (including\nobitools fasta extentions)"
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_eco_pcr
  doc: Input file is in ecopcr format
  type: boolean?
  inputBinding:
    prefix: --ecopcr
- id: in_raw_fast_a
  doc: "Input file is in fasta format (but more tolerant to\nformat variant)"
  type: boolean?
  inputBinding:
    prefix: --raw-fasta
- id: in_sanger
  doc: "Input file is in sanger fastq nucleic format (standard\nfastq)"
  type: boolean?
  inputBinding:
    prefix: --sanger
- id: in_solexa
  doc: "Input file is in fastq nucleic format produced by\nsolexa sequencer"
  type: boolean?
  inputBinding:
    prefix: --solexa
- id: in_eco_pcr_db
  doc: Input file is an ecopcr database
  type: boolean?
  inputBinding:
    prefix: --ecopcrdb
- id: in_nuc
  doc: Input file contains nucleic sequences
  type: boolean?
  inputBinding:
    prefix: --nuc
- id: in_prot
  doc: Input file contains protein sequences
  type: boolean?
  inputBinding:
    prefix: --prot
- id: in_fast_a_output
  doc: Output sequences in obitools fasta format
  type: boolean?
  inputBinding:
    prefix: --fasta-output
- id: in_fast_q_output
  doc: Output sequences in sanger fastq format
  type: boolean?
  inputBinding:
    prefix: --fastq-output
- id: in_eco_pcr_db_output
  doc: "Output sequences in ecopcr database format (sequence\nrecords are not printed\
    \ on standard output)"
  type: string?
  inputBinding:
    prefix: --ecopcrdb-output
- id: in_uppercase
  doc: Print sequences in upper case (default is lower case)
  type: boolean?
  inputBinding:
    prefix: --uppercase
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- obiclean
