class: CommandLineTool
id: AssemblePairs.py_sequential.cwl
inputs:
- id: o
  doc: 'Explicit output file name(s). Note, this argument cannot be used with the
    --failed, --outdir, or --outname arguments. If unspecified, then the output filename
    will be based on the input filename(s). (default: None)'
  type: string[]
  inputBinding:
    prefix: -o
- id: outdir
  doc: 'Specify to changes the output directory to the location specified. The input
    file directory is used if this is not specified. (default: None)'
  type: string
  inputBinding:
    prefix: --outdir
- id: out_name
  doc: 'Changes the prefix of the successfully processed output file to the string
    specified. May not be specified with multiple input files. (default: None)'
  type: string
  inputBinding:
    prefix: --outname
- id: log
  doc: 'Specify to write verbose logging to a file. May not be specified with multiple
    input files. (default: None)'
  type: string
  inputBinding:
    prefix: --log
- id: failed
  doc: 'If specified create files containing records that fail processing. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --failed
- id: fast_a
  doc: 'Specify to force output as FASTA rather than FASTQ. (default: None)'
  type: boolean
  inputBinding:
    prefix: --fasta
- id: delim
  doc: "DELIMITER DELIMITER A list of the three delimiters that separate annotation\
    \ blocks, field names and values, and values within a field, respectively. (default:\
    \ ('|', '=', ','))"
  type: string
  inputBinding:
    prefix: --delim
- id: nproc
  doc: 'The number of simultaneous computational processes to execute (CPU cores to
    utilized). (default: 8)'
  type: string
  inputBinding:
    prefix: --nproc
- id: alpha
  doc: 'Significance threshold for de novo paired-end assembly. (default: 1e-05)'
  type: string
  inputBinding:
    prefix: --alpha
- id: max_error
  doc: 'Maximum allowable error rate for de novo assembly. (default: 0.3)'
  type: long
  inputBinding:
    prefix: --maxerror
- id: min_len
  doc: 'Minimum sequence length to scan for overlap in de novo assembly. (default:
    8)'
  type: long
  inputBinding:
    prefix: --minlen
- id: maxlen
  doc: 'Maximum sequence length to scan for overlap in de novo assembly. (default:
    1000)'
  type: long
  inputBinding:
    prefix: --maxlen
- id: scan_rev
  doc: 'If specified, scan past the end of the tail sequence in de novo assembly to
    allow the head sequence to overhang the end of the tail sequence. (default: False)'
  type: boolean
  inputBinding:
    prefix: --scanrev
- id: r
  doc: 'A FASTA file containing the reference sequence database. (default: None)'
  type: string
  inputBinding:
    prefix: -r
- id: mini_dent
  doc: 'Minimum identity of the assembled sequence required to call a valid reference
    guided assembly (between 0 and 1). (default: 0.5)'
  type: long
  inputBinding:
    prefix: --minident
- id: evalue
  doc: 'Minimum E-value for reference alignment for both the head and tail sequence.
    (default: 1e-05)'
  type: string
  inputBinding:
    prefix: --evalue
- id: max_hits
  doc: 'Maximum number of hits from the reference alignment to check for matching
    head and tail sequence assignments. (default: 100)'
  type: long
  inputBinding:
    prefix: --maxhits
- id: fill
  doc: 'Specify to change the behavior of inserted characters when the head and tail
    sequences do not overlap during reference guided assembly. If specified, this
    will result in inserted of the V region reference sequence instead of a sequence
    of Ns in the non-overlapping region. Warning: you could end up making chimeric
    sequences by using this option. (default: False)'
  type: boolean
  inputBinding:
    prefix: --fill
- id: aligner
  doc: 'The local alignment tool to use. Must be one blastn (blast+ nucleotide) or
    usearch (ublast algorithm). (default: usearch)'
  type: string
  inputBinding:
    prefix: --aligner
- id: exec
  doc: 'The name or location of the aligner executable file (blastn or usearch). Defaults
    to the name specified by the --aligner argument. (default: None)'
  type: string
  inputBinding:
    prefix: --exec
- id: db_exec
  doc: 'The name or location of the executable file that builds the reference database.
    This defaults to makeblastdb when blastn is specified to the --aligner argument,
    and usearch when usearch is specified. (default: None)'
  type: string
  inputBinding:
    prefix: --dbexec
outputs: []
cwlVersion: v1.1
baseCommand:
- AssemblePairs.py
- sequential
