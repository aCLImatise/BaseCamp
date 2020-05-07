class: CommandLineTool
id: anvi_script_filter_fasta_by_blast.cwl
inputs:
- id: fast_a_file
  doc: A FASTA-formatted input file
  type: string
  inputBinding:
    prefix: --fasta-file
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: b
  doc: DELIMITED FILE, --blast-output TAB DELIMITED FILE BLAST table generated with
    blastp. `--outfmt 6` as the output format is assumed.
  type: string
  inputBinding:
    prefix: -b
- id: out_fmt
  doc: "Specify the column ordering of your BLAST report. We add the following paramter\
    \ to our BLAST searches so the output report contains the `qlen` field, which\
    \ is not included by default: `-outfmt '6 qseqid sseqid pident length mismatch\
    \ gapopen qstart qend sstart send evalue bitscore qlen slen'`. You may have used\
    \ a different `-outfmt` paramter, and you should use this parameter to explicitly\
    \ define the column names in your output file. For instance, if you had used the\
    \ parameter mentioned above, then the correct version of this parameter would\
    \ be: \"qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue\
    \ bitscore qlen slen\". Regardless of the BLAST output format, your columns MUST\
    \ contain the following parameters for this program to work properly: 'qseqid',\
    \ 'bitscore', 'length', 'qlen', and 'pident'."
  type: string
  inputBinding:
    prefix: --outfmt
- id: threshold
  doc: What `proper_pident` threshold do you want to use for filtering out sequences
    whose top bit-score matches have `proper_pident`s less than this threshold? We
    have defined `proper_pident` to be the percentage of the query amino acids that
    both aligned to and were identical to the corresponding matched amino acid. Note
    that the `pident` parameter output by BLAST does not include regions of the query
    sequence unaligned to the matched sequence, whereas `proper_pident` does. For
    example, a sequence that's only half aligned by a match but with 100% identity
    at matched regions has a `pident` of 100 but a `proper_pident` of 50. The default
    is 30.0%.
  type: string
  inputBinding:
    prefix: --threshold
- id: just_do_it
  doc: Don't bother me with questions or warnings, just do it.
  type: boolean
  inputBinding:
    prefix: --just-do-it
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-filter-fasta-by-blast
