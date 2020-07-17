class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/obiselect.cwl
inputs:
- id: category_attribute
  doc: Add one attribute to the list of attribute used for categorizing sequence records
  type: string
  inputBinding:
    prefix: --category-attribute
- id: number
  doc: number of sequence records to keep in each category
  type: string
  inputBinding:
    prefix: --number
- id: function
  doc: 'python code evaluated for each sequence record [default: random value]'
  type: string
  inputBinding:
    prefix: --function
- id: min
  doc: select sequence record in each group minimizing the function (exclusive with
    -M, -a, --median)
  type: boolean
  inputBinding:
    prefix: --min
- id: max
  doc: select sequence record in each group maximizing the function (exclusive with
    -m, -a, --median)
  type: boolean
  inputBinding:
    prefix: --max
- id: mean
  doc: select sequence record in each group closest to the mean of the function (exclusive
    with -m, -M, --median)
  type: boolean
  inputBinding:
    prefix: --mean
- id: median
  doc: select sequence record in each group closest to the median of the function
    (exclusive with -m, -M, -a)
  type: boolean
  inputBinding:
    prefix: --median
- id: merge
  doc: attributes to merge within each group
  type: string
  inputBinding:
    prefix: --merge
- id: sample
  doc: Tag containing sample descriptions, the default value is set to *merged_sample*
  type: string
  inputBinding:
    prefix: --sample
- id: merge_ids
  doc: add the merged id data to output
  type: boolean
  inputBinding:
    prefix: --merge-ids
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
- id: database
  doc: ecoPCR taxonomy Database name
  type: File
  inputBinding:
    prefix: --database
- id: taxonomy_dump
  doc: NCBI Taxonomy dump repository name
  type: File
  inputBinding:
    prefix: --taxonomy-dump
outputs: []
cwlVersion: v1.1
baseCommand:
- obiselect
