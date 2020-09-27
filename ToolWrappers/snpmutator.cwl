class: CommandLineTool
id: snpmutator.cwl
inputs:
- id: in_num_simulations
  doc: "Number of mutated sequences to generate. (default:\n100)"
  type: long
  inputBinding:
    prefix: --num-simulations
- id: in_num_substitutions
  doc: 'Number of substitutions. (default: 500)'
  type: long
  inputBinding:
    prefix: --num-substitutions
- id: in_num_insertions
  doc: 'Number of insertions. (default: 20)'
  type: long
  inputBinding:
    prefix: --num-insertions
- id: in_num_deletions
  doc: 'Number of deletions. (default: 20)'
  type: long
  inputBinding:
    prefix: --num-deletions
- id: in_random_seed
  doc: "Random number seed; if not set, the results are not\nreproducible. (default:\
    \ None)"
  type: long
  inputBinding:
    prefix: --random-seed
- id: in_pool
  doc: "Choose variants from a pool of eligible positions of\nthe specified size (default:\
    \ 0)"
  type: long
  inputBinding:
    prefix: --pool
- id: in_group
  doc: "Group size. When greater than zero, this parameter\nchooses a new pool of\
    \ positions for each group of\nreplicates. (default: None)"
  type: long
  inputBinding:
    prefix: --group
- id: in_mono
  doc: 'Create monomorphic alleles (default: False)'
  type: boolean
  inputBinding:
    prefix: --mono
- id: in_seq_id
  doc: "Output fasta description line sequence ID. Each\nmutated output file has only\
    \ one sequence. If not\nspecified, the defline id will be the id of the first\n\
    sequence in the input fasta file. The defline is\nalways suffixed with an annotation\
    \ in this format:\n(mutated s=900 i=50 d=50). The seq id is also written\nto the\
    \ CHROM column of the output VCF file. (default:\nNone)"
  type: File
  inputBinding:
    prefix: --seqid
- id: in_ref
  doc: "Output concatenanted reference file with no mutations,\nbut all sequences\
    \ concatenanted together. All the\nreplicates will be mutations of this file.\
    \ (default:\nNone)"
  type: File
  inputBinding:
    prefix: --ref
- id: in_fast_a_dir
  doc: "Output directory for generated fasta files. (default:\n.)"
  type: Directory
  inputBinding:
    prefix: --fasta-dir
- id: in_summary
  doc: 'Output positional summary file. (default: None)'
  type: File
  inputBinding:
    prefix: --summary
- id: in_vcf
  doc: 'Output VCF file. (default: None)'
  type: File
  inputBinding:
    prefix: --vcf
- id: in_metrics
  doc: 'Output metrics file. (default: None)'
  type: File
  inputBinding:
    prefix: --metrics
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ref
  doc: "Output concatenanted reference file with no mutations,\nbut all sequences\
    \ concatenanted together. All the\nreplicates will be mutations of this file.\
    \ (default:\nNone)"
  type: File
  outputBinding:
    glob: $(inputs.in_ref)
- id: out_fast_a_dir
  doc: "Output directory for generated fasta files. (default:\n.)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_fast_a_dir)
- id: out_summary
  doc: 'Output positional summary file. (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_summary)
- id: out_vcf
  doc: 'Output VCF file. (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_vcf)
- id: out_metrics
  doc: 'Output metrics file. (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_metrics)
cwlVersion: v1.1
baseCommand:
- snpmutator
