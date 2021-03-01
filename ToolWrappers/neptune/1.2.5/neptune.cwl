class: CommandLineTool
id: neptune.cwl
inputs:
- id: in_inclusion
  doc: The inclusion targets in FASTA format.
  type: string[]
  inputBinding:
    prefix: --inclusion
- id: in_exclusion
  doc: The exclusion targets in FASTA format.
  type: string[]
  inputBinding:
    prefix: --exclusion
- id: in_output
  doc: The directory to place all output.
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_km_er
  doc: The size of the k-mers.
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_organization
  doc: "The degree of k-mer organization in the output files.\nThis exploits the four-character\
    \ alphabet of\nnucleotides to produce several k-mer output files,\nwith all k-mers\
    \ in a file beginning with the same\nshort sequence of nucleotides. This parameter\n\
    determines the number of nucleotides to use and will\nproduce 4^X output files,\
    \ where X is the number of\nnucleotides specified by this parameter. The number\
    \ of\noutput files directly corresponds to the amount of\nparallelization in the\
    \ k-mer aggregation process."
  type: long?
  inputBinding:
    prefix: --organization
- id: in_filter_percent
  doc: "The maximum percent identity of a candidate signature\nwith an exclusion hit\
    \ before discarding the signature.\nWhen both the filtered percent and filtered\
    \ length\nlimits are exceed, the signature is discarded."
  type: long?
  inputBinding:
    prefix: --filter-percent
- id: in_filter_length
  doc: "The maximum shared fractional length of an exclusion\ntarget alignment with\
    \ a candidate signature before\ndiscarding the signature. When both the filtered\n\
    percent and filtered length limits are exceed, the\nsignature is discarded."
  type: long?
  inputBinding:
    prefix: --filter-length
- id: in_seed_size
  doc: The seed size used during alignment.
  type: long?
  inputBinding:
    prefix: --seed-size
- id: in_reference
  doc: The FASTA reference from which to extract signatures.
  type: string[]
  inputBinding:
    prefix: --reference
- id: in_reference_size
  doc: "The estimated total size in nucleotides of the\nreference. This will be calculated\
    \ if not specified."
  type: long?
  inputBinding:
    prefix: --reference-size
- id: in_rate
  doc: "The probability of a mutation or error at an arbitrary\nposition. The default\
    \ value is 0.01."
  type: double?
  inputBinding:
    prefix: --rate
- id: in_in_hits
  doc: "The minimum number of inclusion targets that must\ncontain a k-mer observed\
    \ in the reference to begin or\ncontinue building candidate signatures. This will\
    \ be\ncalculated if not specified."
  type: long?
  inputBinding:
    prefix: --inhits
- id: in_ex_hits
  doc: "The maximum allowable number of exclusion targets that\nmay contain a k-mer\
    \ observed in the reference before\nterminating the construction of a candidate\
    \ signature.\nThis will be calculated if not specified."
  type: long?
  inputBinding:
    prefix: --exhits
- id: in_gap
  doc: "The maximum number of consecutive k-mers observed in\nthe reference during\
    \ signature candidate construction\nthat fail to have enough inclusion hits before\n\
    terminating the construction of a candidate signature.\nThis will be calculated\
    \ if not specified and is\ndetermined from the size of k and the rate."
  type: long?
  inputBinding:
    prefix: --gap
- id: in_size
  doc: "The minimum size of all reported candidate signatures.\nIdentified candidate\
    \ signatures shorter than this\nvalue will be discard."
  type: long?
  inputBinding:
    prefix: --size
- id: in_gc_content
  doc: "The average GC-content of all inclusion and exclusion\ntargets. This will\
    \ be calculated from inclusion and\nexclusion targets if not specified."
  type: string?
  inputBinding:
    prefix: --gc-content
- id: in_confidence
  doc: "The statistical confidence level in decision making\ninvolving probabilities\
    \ when producing candidate\nsignatures."
  type: string?
  inputBinding:
    prefix: --confidence
- id: in_parallelization
  doc: "The number of processes to run simultaneously. Note\nthat this is only applicable\
    \ when running Neptune in\nnon-DRMAA mode (default)."
  type: long?
  inputBinding:
    prefix: --parallelization
- id: in_drmaa
  doc: "Whether or not to run Neptune in DRMAA-mode and\nattempt to schedule jobs\
    \ through DRMAA. This will\nrequire setting up DRMAA in advance."
  type: boolean?
  inputBinding:
    prefix: --drmaa
- id: in_default_specification
  doc: The default DRMAA parameters.
  type: string?
  inputBinding:
    prefix: --default-specification
- id: in_count_specification
  doc: The DRMAA parameters specific to k-mer counting.
  type: string?
  inputBinding:
    prefix: --count-specification
- id: in_aggregate_specification
  doc: "The DRMAA specific parameters specific to k-mer\naggregation."
  type: string?
  inputBinding:
    prefix: --aggregate-specification
- id: in_extract_specification
  doc: "The DRMAA parameters specific to candidate signature\nextraction."
  type: string?
  inputBinding:
    prefix: --extract-specification
- id: in_database_specification
  doc: "The DRMAA parameters specific to database construction\nand querying."
  type: string?
  inputBinding:
    prefix: --database-specification
- id: in_filter_specification
  doc: "The DRMAA parameters specific to candidate signature\nfiltering."
  type: string?
  inputBinding:
    prefix: --filter-specification
- id: in_consolidate_specification
  doc: "The DRMAA parameters specific to filtered signature\nconsolidation.\n"
  type: string?
  inputBinding:
    prefix: --consolidate-specification
- id: in_neptune_cond_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The directory to place all output.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- neptune
