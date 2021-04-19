class: CommandLineTool
id: referenceseeker.cwl
inputs:
- id: in_crg
  doc: "Max number of candidate reference genomes to pass kmer\nprefilter (default\
    \ = 100)"
  type: long?
  inputBinding:
    prefix: --crg
- id: in_ani
  doc: ANI threshold (default = 0.95)
  type: double?
  inputBinding:
    prefix: --ani
- id: in_conserved_dna
  doc: Conserved DNA threshold (default = 0.69)
  type: double?
  inputBinding:
    prefix: --conserved-dna
- id: in_unfiltered
  doc: "Set kmer prefilter to extremely conservative values\nand skip species level\
    \ ANI cutoffs (ANI >= 0.95 and\nconserved DNA >= 0.69"
  type: boolean?
  inputBinding:
    prefix: --unfiltered
- id: in_bidirectional
  doc: "Compute bidirectional ANI/conserved DNA values\n(default = False)"
  type: boolean?
  inputBinding:
    prefix: --bidirectional
- id: in_verbose
  doc: Print verbose information
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: "Number of used threads (default = number of available\nCPU cores)"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/referenceseeker:1.7.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- referenceseeker
