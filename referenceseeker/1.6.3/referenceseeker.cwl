class: CommandLineTool
id: referenceseeker.cwl
inputs:
- id: crg
  doc: Max number of candidate reference genomes to pass kmer prefilter (default =
    100)
  type: string
  inputBinding:
    prefix: --crg
- id: ani
  doc: ANI threshold (default = 0.95)
  type: string
  inputBinding:
    prefix: --ani
- id: conserved_dna
  doc: Conserved DNA threshold (default = 0.69)
  type: string
  inputBinding:
    prefix: --conserved-dna
- id: unfiltered
  doc: Set kmer prefilter to extremely conservative values and skip species level
    ANI cutoffs (ANI >= 0.95 and conserved DNA >= 0.69
  type: boolean
  inputBinding:
    prefix: --unfiltered
- id: bidirectional
  doc: Compute bidirectional ANI/conserved DNA values (default = False)
  type: boolean
  inputBinding:
    prefix: --bidirectional
- id: verbose
  doc: Print verbose information
  type: boolean
  inputBinding:
    prefix: --verbose
- id: threads
  doc: Number of used threads (default = number of available CPU cores)
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- referenceseeker
