#!/usr/bin/env cwl-runner

baseCommand:
- neptune
class: CommandLineTool
cwlVersion: v1.0
id: neptune
inputs:
- doc: The inclusion targets in FASTA format.
  id: inclusion
  inputBinding:
    prefix: --inclusion
  type:
    items: string
    type: array
- doc: The exclusion targets in FASTA format.
  id: exclusion
  inputBinding:
    prefix: --exclusion
  type:
    items: string
    type: array
- doc: The directory to place all output.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The size of the k-mers.
  id: km_er
  inputBinding:
    prefix: --kmer
  type: string
- doc: The degree of k-mer organization in the output files. This exploits the four-character
    alphabet of nucleotides to produce several k-mer output files, with all k-mers
    in a file beginning with the same short sequence of nucleotides. This parameter
    determines the number of nucleotides to use and will produce 4^X output files,
    where X is the number of nucleotides specified by this parameter. The number of
    output files directly corresponds to the amount of parallelization in the k-mer
    aggregation process.
  id: organization
  inputBinding:
    prefix: --organization
  type: string
- doc: The maximum percent identity of a candidate signature with an exclusion hit
    before discarding the signature. When both the filtered percent and filtered length
    limits are exceed, the signature is discarded.
  id: filter_percent
  inputBinding:
    prefix: --filter-percent
  type: string
- doc: The maximum shared fractional length of an exclusion target alignment with
    a candidate signature before discarding the signature. When both the filtered
    percent and filtered length limits are exceed, the signature is discarded.
  id: filter_length
  inputBinding:
    prefix: --filter-length
  type: string
- doc: The seed size used during alignment.
  id: seed_size
  inputBinding:
    prefix: --seed-size
  type: string
- doc: The FASTA reference from which to extract signatures.
  id: reference
  inputBinding:
    prefix: --reference
  type:
    items: string
    type: array
- doc: The estimated total size in nucleotides of the reference. This will be calculated
    if not specified.
  id: reference_size
  inputBinding:
    prefix: --reference-size
  type: string
- doc: The probability of a mutation or error at an arbitrary position. The default
    value is 0.01.
  id: rate
  inputBinding:
    prefix: --rate
  type: string
- doc: The minimum number of inclusion targets that must contain a k-mer observed
    in the reference to begin or continue building candidate signatures. This will
    be calculated if not specified.
  id: in_hits
  inputBinding:
    prefix: --inhits
  type: string
- doc: The maximum allowable number of exclusion targets that may contain a k-mer
    observed in the reference before terminating the construction of a candidate signature.
    This will be calculated if not specified.
  id: ex_hits
  inputBinding:
    prefix: --exhits
  type: string
- doc: The maximum number of consecutive k-mers observed in the reference during signature
    candidate construction that fail to have enough inclusion hits before terminating
    the construction of a candidate signature. This will be calculated if not specified
    and is determined from the size of k and the rate.
  id: gap
  inputBinding:
    prefix: --gap
  type: string
- doc: The minimum size of all reported candidate signatures. Identified candidate
    signatures shorter than this value will be discard.
  id: size
  inputBinding:
    prefix: --size
  type: long
- doc: The average GC-content of all inclusion and exclusion targets. This will be
    calculated from inclusion and exclusion targets if not specified.
  id: gc_content
  inputBinding:
    prefix: --gc-content
  type: string
- doc: The statistical confidence level in decision making involving probabilities
    when producing candidate signatures.
  id: confidence
  inputBinding:
    prefix: --confidence
  type: string
- doc: The number of processes to run simultaneously. Note that this is only applicable
    when running Neptune in non-DRMAA mode (default).
  id: parallelization
  inputBinding:
    prefix: --parallelization
  type: string
- doc: Whether or not to run Neptune in DRMAA-mode and attempt to schedule jobs through
    DRMAA. This will require setting up DRMAA in advance.
  id: drmaa
  inputBinding:
    prefix: --drmaa
  type: boolean
- doc: The default DRMAA parameters.
  id: default_specification
  inputBinding:
    prefix: --default-specification
  type: string
- doc: The DRMAA parameters specific to k-mer counting.
  id: count_specification
  inputBinding:
    prefix: --count-specification
  type: string
- doc: The DRMAA specific parameters specific to k-mer aggregation.
  id: aggregate_specification
  inputBinding:
    prefix: --aggregate-specification
  type: string
- doc: The DRMAA parameters specific to candidate signature extraction.
  id: extract_specification
  inputBinding:
    prefix: --extract-specification
  type: string
- doc: The DRMAA parameters specific to database construction and querying.
  id: database_specification
  inputBinding:
    prefix: --database-specification
  type: string
- doc: The DRMAA parameters specific to candidate signature filtering.
  id: filter_specification
  inputBinding:
    prefix: --filter-specification
  type: string
- doc: The DRMAA parameters specific to filtered signature consolidation.
  id: consolidate_specification
  inputBinding:
    prefix: --consolidate-specification
  type: string
