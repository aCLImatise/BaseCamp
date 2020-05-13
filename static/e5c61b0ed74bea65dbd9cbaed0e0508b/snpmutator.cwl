class: CommandLineTool
id: snpmutator.cwl
inputs:
- id: input_fast_a_file
  doc: Input fasta file.
  type: string
  inputBinding:
    position: 0
- id: num_simulations
  doc: 'Number of mutated sequences to generate. (default: 100)'
  type: long
  inputBinding:
    prefix: --num-simulations
- id: num_substitutions
  doc: 'Number of substitutions. (default: 500)'
  type: long
  inputBinding:
    prefix: --num-substitutions
- id: num_insertions
  doc: 'Number of insertions. (default: 20)'
  type: long
  inputBinding:
    prefix: --num-insertions
- id: num_deletions
  doc: 'Number of deletions. (default: 20)'
  type: long
  inputBinding:
    prefix: --num-deletions
- id: random_seed
  doc: 'Random number seed; if not set, the results are not reproducible. (default:
    None)'
  type: long
  inputBinding:
    prefix: --random-seed
- id: pool
  doc: 'Choose variants from a pool of eligible positions of the specified size (default:
    0)'
  type: long
  inputBinding:
    prefix: --pool
- id: group
  doc: 'Group size. When greater than zero, this parameter chooses a new pool of positions
    for each group of replicates. (default: None)'
  type: long
  inputBinding:
    prefix: --group
- id: mono
  doc: 'Create monomorphic alleles (default: False)'
  type: boolean
  inputBinding:
    prefix: --mono
- id: seq_id
  doc: 'Output fasta description line sequence ID. Each mutated output file has only
    one sequence. If not specified, the defline id will be the id of the first sequence
    in the input fasta file. The defline is always suffixed with an annotation in
    this format: (mutated s=900 i=50 d=50). The seq id is also written to the CHROM
    column of the output VCF file. (default: None)'
  type: string
  inputBinding:
    prefix: --seqid
- id: ref
  doc: 'Output concatenanted reference file with no mutations, but all sequences concatenanted
    together. All the replicates will be mutations of this file. (default: None)'
  type: File
  inputBinding:
    prefix: --ref
- id: fast_a_dir
  doc: 'Output directory for generated fasta files. (default: .)'
  type: string
  inputBinding:
    prefix: --fasta-dir
- id: summary
  doc: 'Output positional summary file. (default: None)'
  type: File
  inputBinding:
    prefix: --summary
- id: vcf
  doc: 'Output VCF file. (default: None)'
  type: File
  inputBinding:
    prefix: --vcf
- id: metrics
  doc: 'Output metrics file. (default: None)'
  type: File
  inputBinding:
    prefix: --metrics
outputs: []
cwlVersion: v1.1
baseCommand:
- snpmutator
