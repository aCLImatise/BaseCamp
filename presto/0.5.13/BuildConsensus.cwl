class: CommandLineTool
id: BuildConsensus.py.cwl
inputs:
- id: consensus_pass
  doc: consensus reads.
  type: string
  inputBinding:
    position: 0
- id: consensus_fail
  doc: raw reads failing consensus filtering criteria.
  type: string
  inputBinding:
    position: 1
- id: primer
  doc: a comma delimited list of unique primer annotations found within the barcode
    read group.
  type: string
  inputBinding:
    position: 0
- id: pr_count
  doc: a comma delimited list of the corresponding counts of unique primer annotations.
  type: string
  inputBinding:
    position: 1
- id: pr_cons
  doc: the majority primer within the barcode read group.
  type: string
  inputBinding:
    position: 2
- id: pr_freq
  doc: the frequency of the majority primer.
  type: string
  inputBinding:
    position: 3
- id: cons_count
  doc: the count of reads within the barcode read group which contributed to the consensus
    sequence. This is the total size of the read group, minus sequence excluded due
    to user defined filtering criteria.
  type: string
  inputBinding:
    position: 4
- id: s
  doc: 'A list of FASTA/FASTQ files containing sequences to process. (default: None)'
  type: string[]
  inputBinding:
    prefix: -s
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
- id: dep
  doc: 'Specify to calculate consensus quality with a non- independence assumption
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --dep
- id: max_div
  doc: 'Specify to calculate the nucleotide diversity of each read group (average
    pairwise error rate) and remove groups exceeding the given diversity threshold.
    Diversity is calculate for all positions within the read group, ignoring any character
    filtering imposed by the -q, --freq and --maxgap arguments. Mutually exclusive
    with --maxerror. (default: None)'
  type: long
  inputBinding:
    prefix: --maxdiv
- id: max_error
  doc: 'Specify to calculate the error rate of each read group (rate of mismatches
    from consensus) and remove groups exceeding the given error threshold. The error
    rate is calculated against the final consensus sequence, which may include masked
    positions due to the -q and --freq arguments and may have deleted positions due
    to the --maxgap argument. Mutually exclusive with --maxdiv. (default: None)'
  type: long
  inputBinding:
    prefix: --maxerror
outputs: []
cwlVersion: v1.1
baseCommand:
- BuildConsensus.py
