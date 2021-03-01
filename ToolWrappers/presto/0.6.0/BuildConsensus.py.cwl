class: CommandLineTool
id: BuildConsensus.py.cwl
inputs:
- id: in_list_fastafastq_files
  doc: "A list of FASTA/FASTQ files containing sequences to\nprocess. (default: None)"
  type: string[]
  inputBinding:
    prefix: -s
- id: in_explicit_output_file
  doc: "Explicit output file name(s). Note, this argument\ncannot be used with the\
    \ --failed, --outdir, or\n--outname arguments. If unspecified, then the output\n\
    filename will be based on the input filename(s).\n(default: None)"
  type: string[]
  inputBinding:
    prefix: -o
- id: in_outdir
  doc: "Specify to changes the output directory to the\nlocation specified. The input\
    \ file directory is used\nif this is not specified. (default: None)"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: "Changes the prefix of the successfully processed\noutput file to the string\
    \ specified. May not be\nspecified with multiple input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --outname
- id: in_log
  doc: "Specify to write verbose logging to a file. May not be\nspecified with multiple\
    \ input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --log
- id: in_failed
  doc: "If specified create files containing records that fail\nprocessing. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --failed
- id: in_fast_a
  doc: "Specify to force output as FASTA rather than FASTQ.\n(default: None)"
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_delim
  doc: "DELIMITER DELIMITER\nA list of the three delimiters that separate\nannotation\
    \ blocks, field names and values, and values\nwithin a field, respectively. (default:\
    \ ('|', '=',\n','))"
  type: string?
  inputBinding:
    prefix: --delim
- id: in_nproc
  doc: "The number of simultaneous computational processes to\nexecute (CPU cores\
    \ to utilized). (default: 8)"
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_minimum_number_sequences
  doc: "The minimum number of sequences needed to define a\nvalid consensus. (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: -n
- id: in_bf
  doc: "Position of description barcode field to group\nsequences by. (default: BARCODE)"
  type: string?
  inputBinding:
    prefix: --bf
- id: in_consensus_quality_score
  doc: "Consensus quality score cut-off under which an\nambiguous character is assigned;\
    \ does not apply when\nquality scores are unavailable. (default: 0)"
  type: long?
  inputBinding:
    prefix: -q
- id: in_freq
  doc: "Fraction of character occurrences under which an\nambiguous character is assigned.\
    \ (default: 0.6)"
  type: long?
  inputBinding:
    prefix: --freq
- id: in_max_gap
  doc: "If specified, this defines a cut-off for the frequency\nof allowed gap values\
    \ for each position. Positions\nexceeding the threshold are deleted from the\n\
    consensus. If not defined, positions are always\nretained. (default: None)"
  type: long?
  inputBinding:
    prefix: --maxgap
- id: in_pf
  doc: "Specifies the field name of the primer annotations\n(default: None)"
  type: string?
  inputBinding:
    prefix: --pf
- id: in_pr_cons
  doc: "Specify to define a minimum primer frequency required\nto assign a consensus\
    \ primer, and filter out sequences\nwith minority primers from the consensus building\n\
    step. (default: None)"
  type: string?
  inputBinding:
    prefix: --prcons
- id: in_cf
  doc: "Specifies a set of additional annotation fields to\ncopy into the consensus\
    \ sequence annotations.\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --cf
- id: in_act
  doc: "[{min,max,sum,set,majority} ...]\nList of actions to take for each copy field\
    \ which\ndefines how each annotation will be combined into a\nsingle value. The\
    \ actions \"min\", \"max\", \"sum\" perform\nthe corresponding mathematical operation\
    \ on numeric\nannotations. The action \"set\" combines annotations\ninto a comma\
    \ delimited list of unique values and adds\nan annotation named <FIELD>_COUNT\
    \ specifying the count\nof each item in the set. The action \"majority\" assigns\n\
    the most frequent annotation to the consensus\nannotation and adds an annotation\
    \ named <FIELD>_FREQ\nspecifying the frequency of the majority value.\n(default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --act
- id: in_dep
  doc: "Specify to calculate consensus quality with a non-\nindependence assumption\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --dep
- id: in_max_div
  doc: "Specify to calculate the nucleotide diversity of each\nread group (average\
    \ pairwise error rate) and remove\ngroups exceeding the given diversity threshold.\n\
    Diversity is calculate for all positions within the\nread group, ignoring any\
    \ character filtering imposed\nby the -q, --freq and --maxgap arguments. Mutually\n\
    exclusive with --maxerror. (default: None)"
  type: long?
  inputBinding:
    prefix: --maxdiv
- id: in_max_error
  doc: "Specify to calculate the error rate of each read group\n(rate of mismatches\
    \ from consensus) and remove groups\nexceeding the given error threshold. The\
    \ error rate is\ncalculated against the final consensus sequence, which\nmay include\
    \ masked positions due to the -q and --freq\narguments and may have deleted positions\
    \ due to the\n--maxgap argument. Mutually exclusive with --maxdiv.\n(default:\
    \ None)"
  type: long?
  inputBinding:
    prefix: --maxerror
- id: in_consensus_pass
  doc: consensus reads.
  type: string
  inputBinding:
    position: 0
- id: in_consensus_fail
  doc: raw reads failing consensus filtering criteria.
  type: string
  inputBinding:
    position: 1
- id: in_primer
  doc: "a comma delimited list of unique primer annotations found within the\nbarcode\
    \ read group."
  type: string
  inputBinding:
    position: 0
- id: in_pr_count
  doc: a comma delimited list of the corresponding counts of unique primer
  type: string
  inputBinding:
    position: 1
- id: in_annotations_dot
  doc: PRCONS
  type: string
  inputBinding:
    position: 2
- id: in_pr_freq
  doc: the frequency of the majority primer.
  type: string
  inputBinding:
    position: 0
- id: in_cons_count
  doc: "the count of reads within the barcode read group which contributed to\nthe\
    \ consensus sequence. This is the total size of the read group,\nminus sequence\
    \ excluded due to user defined filtering criteria.\n"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- BuildConsensus.py
