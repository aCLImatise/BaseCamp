class: CommandLineTool
id: neptune.cwl
inputs:
- id: inclusion
  doc: The inclusion targets in FASTA format.
  type: string[]
  inputBinding:
    prefix: --inclusion
- id: exclusion
  doc: The exclusion targets in FASTA format.
  type: string[]
  inputBinding:
    prefix: --exclusion
- id: output
  doc: The directory to place all output.
  type: string
  inputBinding:
    prefix: --output
- id: km_er
  doc: The size of the k-mers.
  type: string
  inputBinding:
    prefix: --kmer
- id: organization
  doc: The degree of k-mer organization in the output files. This exploits the four-character
    alphabet of nucleotides to produce several k-mer output files, with all k-mers
    in a file beginning with the same short sequence of nucleotides. This parameter
    determines the number of nucleotides to use and will produce 4^X output files,
    where X is the number of nucleotides specified by this parameter. The number of
    output files directly corresponds to the amount of parallelization in the k-mer
    aggregation process.
  type: string
  inputBinding:
    prefix: --organization
- id: filter_percent
  doc: The maximum percent identity of a candidate signature with an exclusion hit
    before discarding the signature. When both the filtered percent and filtered length
    limits are exceed, the signature is discarded.
  type: string
  inputBinding:
    prefix: --filter-percent
- id: filter_length
  doc: The maximum shared fractional length of an exclusion target alignment with
    a candidate signature before discarding the signature. When both the filtered
    percent and filtered length limits are exceed, the signature is discarded.
  type: string
  inputBinding:
    prefix: --filter-length
- id: seed_size
  doc: The seed size used during alignment.
  type: string
  inputBinding:
    prefix: --seed-size
- id: reference
  doc: The FASTA reference from which to extract signatures.
  type: string[]
  inputBinding:
    prefix: --reference
- id: reference_size
  doc: The estimated total size in nucleotides of the reference. This will be calculated
    if not specified.
  type: string
  inputBinding:
    prefix: --reference-size
- id: rate
  doc: The probability of a mutation or error at an arbitrary position. The default
    value is 0.01.
  type: string
  inputBinding:
    prefix: --rate
- id: in_hits
  doc: The minimum number of inclusion targets that must contain a k-mer observed
    in the reference to begin or continue building candidate signatures. This will
    be calculated if not specified.
  type: string
  inputBinding:
    prefix: --inhits
- id: ex_hits
  doc: The maximum allowable number of exclusion targets that may contain a k-mer
    observed in the reference before terminating the construction of a candidate signature.
    This will be calculated if not specified.
  type: string
  inputBinding:
    prefix: --exhits
- id: gap
  doc: The maximum number of consecutive k-mers observed in the reference during signature
    candidate construction that fail to have enough inclusion hits before terminating
    the construction of a candidate signature. This will be calculated if not specified
    and is determined from the size of k and the rate.
  type: string
  inputBinding:
    prefix: --gap
- id: size
  doc: The minimum size of all reported candidate signatures. Identified candidate
    signatures shorter than this value will be discard.
  type: long
  inputBinding:
    prefix: --size
- id: gc_content
  doc: The average GC-content of all inclusion and exclusion targets. This will be
    calculated from inclusion and exclusion targets if not specified.
  type: string
  inputBinding:
    prefix: --gc-content
- id: confidence
  doc: The statistical confidence level in decision making involving probabilities
    when producing candidate signatures.
  type: string
  inputBinding:
    prefix: --confidence
- id: parallelization
  doc: The number of processes to run simultaneously. Note that this is only applicable
    when running Neptune in non-DRMAA mode (default).
  type: string
  inputBinding:
    prefix: --parallelization
- id: drmaa
  doc: Whether or not to run Neptune in DRMAA-mode and attempt to schedule jobs through
    DRMAA. This will require setting up DRMAA in advance.
  type: boolean
  inputBinding:
    prefix: --drmaa
- id: default_specification
  doc: The default DRMAA parameters.
  type: string
  inputBinding:
    prefix: --default-specification
- id: count_specification
  doc: The DRMAA parameters specific to k-mer counting.
  type: string
  inputBinding:
    prefix: --count-specification
- id: aggregate_specification
  doc: The DRMAA specific parameters specific to k-mer aggregation.
  type: string
  inputBinding:
    prefix: --aggregate-specification
- id: extract_specification
  doc: The DRMAA parameters specific to candidate signature extraction.
  type: string
  inputBinding:
    prefix: --extract-specification
- id: database_specification
  doc: The DRMAA parameters specific to database construction and querying.
  type: string
  inputBinding:
    prefix: --database-specification
- id: filter_specification
  doc: The DRMAA parameters specific to candidate signature filtering.
  type: string
  inputBinding:
    prefix: --filter-specification
- id: consolidate_specification
  doc: The DRMAA parameters specific to filtered signature consolidation.
  type: string
  inputBinding:
    prefix: --consolidate-specification
outputs: []
cwlVersion: v1.1
baseCommand:
- neptune
