class: CommandLineTool
id: PBcR.cwl
inputs:
- id: length
  doc: Minimum length of PacBio sequences to correct/output.
  type: long
  inputBinding:
    prefix: -length
- id: partitions
  doc: Number of partitions for consensus
  type: long
  inputBinding:
    prefix: -partitions
- id: library_name
  doc: Name of the library; freeformat text. Must be unique from any library names
    in the FRG files used for correction
  type: string
  inputBinding:
    prefix: -libraryname
- id: threads
  doc: Number of threads to use for correction. Defaults to available cores on the
    local system
  type: long
  inputBinding:
    prefix: -threads
- id: short_reads
  doc: Use if the sequences for correction are 100bp or shorter.
  type: boolean
  inputBinding:
    prefix: -shortReads
- id: genome_size
  doc: <int>          Specify the approximate genome size. This will be used to compute
    the maximum number of bases to correct
  type: boolean
  inputBinding:
    prefix: -genomeSize
- id: max_coverage
  doc: Maximum coverage of PacBio sequences to correct. Only the longest sequences
    adding up to this coverage will be corrected. Requires genomeSize to be specified.
    Defaults to 40X
  type: long
  inputBinding:
    prefix: -maxCoverage
outputs: []
cwlVersion: v1.1
baseCommand:
- PBcR
