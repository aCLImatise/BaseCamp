class: CommandLineTool
id: secapr_reference_assembly.cwl
inputs:
- id: reads
  doc: Call the folder that contains the trimmed reads, organized in a separate subfolder
    for each sample. The name of the subfolder has to start with the sample name,
    delimited with an underscore [_] (default output of clean_reads function).
  type: string
  inputBinding:
    prefix: --reads
- id: reference_type
  doc: Please choose which type of reference you want to map the samples to. "alignment-consensus"
    will create a consensus sequence for each alignment file which will be used as
    a reference for all samples. This is recommendable when all samples are rather
    closely related to each other. "sample-specific" will extract the sample specific
    sequences from an alignment and use these as a separate reference for each individual
    sample. "user-ref-lib" enables to input one single fasta file created by the user
    which will be used as a reference library for all samples.
  type: string
  inputBinding:
    prefix: --reference_type
- id: reference
  doc: When choosing "alignment-consensus" or "sample- specific" as reference_type,
    this flag calls the folder containing the alignment files for your target loci
    (fasta-format). In case of "user-ref-lib" as reference_type, this flag calls one
    single fasta file that contains a user-prepared reference library which will be
    applied to all samples.
  type: string
  inputBinding:
    prefix: --reference
- id: output
  doc: The output directory where results will be safed.
  type: string
  inputBinding:
    prefix: --output
- id: keep_duplicates
  doc: Use this flag if you do not want to discard all duplicate reads with Picard.
  type: boolean
  inputBinding:
    prefix: --keep_duplicates
- id: min_coverage
  doc: Set the minimum read coverage. Only positions that are covered by this number
    of reads will be called in the consensus sequence, otherwise the program will
    add an ambiguity at this position.
  type: long
  inputBinding:
    prefix: --min_coverage
- id: cores
  doc: Number of computational cores for parallelization of computation.
  type: string
  inputBinding:
    prefix: --cores
- id: k
  doc: If the part of the read that sufficiently matches the reference is shorter
    than this threshold, it will be discarded (minSeedLen).
  type: string
  inputBinding:
    prefix: --k
- id: w
  doc: Avoid introducing gaps in reads that are longer than this threshold.
  type: string
  inputBinding:
    prefix: --w
- id: d
  doc: Stop extension when the difference between the best and the current extension
    score is above |i-j|*A+INT, where i and j are the current positions of the query
    and reference, respectively, and A is the matching score.
  type: string
  inputBinding:
    prefix: --d
- id: r
  doc: Trigger re-seeding for a MEM longer than minSeedLen*FLOAT.
  type: string
  inputBinding:
    prefix: --r
- id: c
  doc: Discard a match if it has more than INT occurence in the genome
  type: string
  inputBinding:
    prefix: --c
- id: a
  doc: Matching score. Acts as a factor enhancing any match (higher value makes it
    less conservative = allows reads that have fewer matches, since every match is
    scored higher).
  type: string
  inputBinding:
    prefix: --a
- id: b
  doc: 'Mismatch penalty. The accepted mismatch rate per read on length k is approximately:
    {.75 * exp[-log(4) * B/A]}'
  type: string
  inputBinding:
    prefix: --b
- id: o
  doc: Gap opening penalty
  type: string
  inputBinding:
    prefix: --o
- id: e
  doc: Gap extension penalty
  type: string
  inputBinding:
    prefix: --e
- id: l
  doc: Clipping penalty. During extension, the algorithm keeps track of the best score
    reaching the end of query. If this score is larger than the best extension score
    minus the clipping penalty, clipping will not be applied.
  type: string
  inputBinding:
    prefix: --l
- id: u
  doc: Penalty for an unpaired read pair. The lower the value, the more unpaired reads
    will be allowed in the mapping.
  type: string
  inputBinding:
    prefix: --u
outputs: []
cwlVersion: v1.1
baseCommand:
- secapr
- reference_assembly
