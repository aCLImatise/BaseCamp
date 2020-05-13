class: CommandLineTool
id: taco_refcomp.cwl
inputs:
- id: output_dir
  doc: 'Directory for reference comparison output (default: taco_compare)'
  type: string
  inputBinding:
    prefix: --output-dir
- id: num_processes
  doc: 'Run tool in parallel with N processes. (note: each core processes 1 chromosome)
    (default: 1)'
  type: string
  inputBinding:
    prefix: --num-processes
- id: cp_at
  doc: 'Run CPAT tool to for coding potential scoring. (CPAT function currently only
    supports Human, Mouse, and Zebrafish) (WARNING: The CPAT tool can take over an
    hour) (default: False)'
  type: boolean
  inputBinding:
    prefix: --cpat
- id: cp_at_species
  doc: 'Select either: human, mouse, zebrafish (default: human)'
  type: string
  inputBinding:
    prefix: --cpat-species
- id: cp_at_genome
  doc: 'Provide a genome fasta for the genome used to produce assemblies being compared.
    Required if "--cpat" used. CPAT uses this to obtain sequence for the provided
    transcripts (default: None)'
  type: string
  inputBinding:
    prefix: --cpat-genome
- id: ref_gtf
  doc: 'Reference GTF file to compare against (default: None)'
  type: string
  inputBinding:
    prefix: --ref-gtf
- id: test_gtf
  doc: 'GTF file used for comparison (default: None)'
  type: string
  inputBinding:
    prefix: --test-gtf
outputs: []
cwlVersion: v1.1
baseCommand:
- taco_refcomp
