class: CommandLineTool
id: ntedit.cwl
inputs:
- id: in__number_threads
  doc: ',     number of threads [default=1]'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_draft_genome_assembly
  doc: ',     draft genome assembly (FASTA, Multi-FASTA, and/or gzipped compatible),
    REQUIRED'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_bloom_filter_file
  doc: ',     Bloom filter file (generated from ntHits), REQUIRED'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_secondary_bloom_filter
  doc: ',     secondary Bloom filter with kmers to reject (generated from ntHits),
    OPTIONAL. EXPERIMENTAL'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_output_file_prefix
  doc: ',     output file prefix, OPTIONAL'
  type: File?
  inputBinding:
    prefix: -b
- id: in_minimum_contig_length
  doc: ',     minimum contig length [default=100]'
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_maximum_number_insertion_try_range
  doc: ',     maximum number of insertion bases to try, range 0-5, [default=4]'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_maximum_number_deletions_try_range
  doc: ',     maximum number of deletions bases to try, range 0-5, [default=5]'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_kx_ratio_number
  doc: ',     k/x ratio for the number of kmers that should be missing, [default=5.000]'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_ky_ratio_number
  doc: ',     k/y ratio for the number of editted kmers that should be present, [default=9.000]'
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_ratio_number_missing
  doc: ',     ratio of number of kmers in the k subset that should be missing in order
    to attempt fix (higher=stringent), [default=0.5]'
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_ratio_number_present
  doc: ',     ratio of number of kmers in the k subset that should be present to accept
    an edit (higher=stringent), [default=0.5]'
  type: boolean?
  inputBinding:
    prefix: -Y
- id: in_cap_number_base
  doc: ',     cap for the number of base insertions that can be made at one position,
    [default=k*1.5]'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_controls_size_checking
  doc: ',     controls size of kmer subset. When checking subset of kmers, check every
    jth kmer, [default=3]'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_mode_best_substitution
  doc: ",     mode of editing, range 0-2, [default=0]\n0: best substitution, or first\
    \ good indel\n1: best substitution, or best indel\n2: best edit overall (suggestion\
    \ that you reduce i and d for performance)"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_snv_mode_overrides
  doc: ',     SNV mode. Overrides draft kmer checks, forcing reassessment at each
    position (-s 1 = yes, default = 0, no. EXPERIMENTAL)'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_verbose_mode_default
  doc: ',     verbose mode (-v 1 = yes, default = 0, no)'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: ',     output file prefix, OPTIONAL'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- ntedit
