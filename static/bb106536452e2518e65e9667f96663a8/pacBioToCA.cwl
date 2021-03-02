class: CommandLineTool
id: pacBioToCA.cwl
inputs:
- id: in_length
  doc: Minimum length of PacBio sequences to correct/output.
  type: long?
  inputBinding:
    prefix: -length
- id: in_partitions
  doc: Number of partitions for consensus
  type: long?
  inputBinding:
    prefix: -partitions
- id: in_library_name
  doc: Name of the library; freeformat text. Must be unique from any library names
    in the FRG files used for correction
  type: string?
  inputBinding:
    prefix: -libraryname
- id: in_threads
  doc: Number of threads to use for correction. Defaults to available cores on the
    local system
  type: long?
  inputBinding:
    prefix: -threads
- id: in_short_reads
  doc: Use if the sequences for correction are 100bp or shorter.
  type: boolean?
  inputBinding:
    prefix: -shortReads
- id: in_genome_size
  doc: <int>          Specify the approximate genome size. This will be used to compute
    the maximum number of bases to correct
  type: boolean?
  inputBinding:
    prefix: -genomeSize
- id: in_max_coverage
  doc: Maximum coverage of PacBio sequences to correct. Only the longest sequences
    adding up to this coverage will be corrected. Requires genomeSize to be specified.
    Defaults to 40X
  type: long?
  inputBinding:
    prefix: -maxCoverage
- id: in_max_gap
  doc: 'The maximum uncorrected PacBio gap that will be allowed. When there is no
    short-read coverage for a region, by default the pipeline will split a PacBio
    sequence. This option will attempt to use other PacBio sequences to patch the
    gap and avoid splitting the read. Sequences where the gaps have no support will
    still be broken. For example, specifying 50, will mean any gap 50bp or smaller
    can have no short-read coverage (but has other PacBio sequence support) without
    splitting the PacBio sequence. Warning: this can allow more sequences that went
    through the SMRTbell to not be fixed.'
  type: long?
  inputBinding:
    prefix: -maxGap
- id: in_coverage_cut_off
  doc: Specify the pacBio coverage (integer) used to separate repeat copies instead
    of automatically estimating.
  type: boolean?
  inputBinding:
    prefix: -coverageCutoff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pacBioToCA
