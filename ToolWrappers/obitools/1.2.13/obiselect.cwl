class: CommandLineTool
id: obiselect.cwl
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
- id: in_category_attribute
  doc: "Add one attribute to the list of attribute used for\ncategorizing sequence\
    \ records"
  type: string
  inputBinding:
    prefix: --category-attribute
- id: in_number
  doc: number of sequence records to keep in each category
  type: long
  inputBinding:
    prefix: --number
- id: in_function
  doc: "python code evaluated for each sequence record\n[default: random value]"
  type: string
  inputBinding:
    prefix: --function
- id: in_min
  doc: "select sequence record in each group minimizing the\nfunction (exclusive with\
    \ -M, -a, --median)"
  type: boolean
  inputBinding:
    prefix: --min
- id: in_max
  doc: "select sequence record in each group maximizing the\nfunction (exclusive with\
    \ -m, -a, --median)"
  type: boolean
  inputBinding:
    prefix: --max
- id: in_mean
  doc: "select sequence record in each group closest to the\nmean of the function\
    \ (exclusive with -m, -M, --median)"
  type: boolean
  inputBinding:
    prefix: --mean
- id: in_median
  doc: "select sequence record in each group closest to the\nmedian of the function\
    \ (exclusive with -m, -M, -a)"
  type: boolean
  inputBinding:
    prefix: --median
- id: in_merge
  doc: attributes to merge within each group
  type: string
  inputBinding:
    prefix: --merge
- id: in_sample
  doc: "Tag containing sample descriptions, the default value\nis set to *merged_sample*"
  type: string
  inputBinding:
    prefix: --sample
- id: in_merge_ids
  doc: add the merged id data to output
  type: boolean
  inputBinding:
    prefix: --merge-ids
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
- id: in_fast_a_output
  doc: Output sequences in obitools fasta format
  type: boolean
  inputBinding:
    prefix: --fasta-output
- id: in_fast_q_output
  doc: Output sequences in sanger fastq format
  type: boolean
  inputBinding:
    prefix: --fastq-output
- id: in_eco_pcr_db_output
  doc: "Output sequences in ecopcr database format (sequence\nrecords are not printed\
    \ on standard output)"
  type: string
  inputBinding:
    prefix: --ecopcrdb-output
- id: in_uppercase
  doc: Print sequences in upper case (default is lower case)
  type: boolean
  inputBinding:
    prefix: --uppercase
- id: in_database
  doc: ecoPCR taxonomy Database name
  type: File
  inputBinding:
    prefix: --database
- id: in_taxonomy_dump
  doc: "NCBI Taxonomy dump repository name\n"
  type: File
  inputBinding:
    prefix: --taxonomy-dump
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- obiselect
