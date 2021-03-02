class: CommandLineTool
id: LINKS.cwl
inputs:
- id: in_sequences_scaffold_format
  doc: sequences to scaffold (Multi-FASTA format, required)
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_fileoffilenames_full_path
  doc: file-of-filenames, full path to long sequence reads or MPET pairs [see below]
    (Multi-FASTA/fastq format, required)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_mpet_reads_default
  doc: "MPET reads (default -m 1 = yes, default = no, optional)\n! DO NOT SET IF NOT\
    \ USING MPET. WHEN SET, LINKS WILL EXPECT A SPECIAL FORMAT UNDER -s\n! Paired\
    \ MPET reads in their original outward orientation <- -> must be separated by\
    \ \":\"\n>template_name\nACGACACTATGCATAAGCAGACGAGCAGCGACGCAGCACG:ATATATAGCGCACGACGCAGCACAGCAGCAGACGAC"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_distance_kmer_rescaffold
  doc: "distance between k-mer pairs (ie. target distances to re-scaffold on. default\
    \ -d 4000, optional)\nMultiple distances are separated by comma. eg. -d 500,1000,2000,3000"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_kmer_value_default
  doc: k-mer value (default -k 15, optional)
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_step_sliding_window
  doc: "step of sliding window when extracting k-mer pairs from long reads (default\
    \ -t 2, optional)\nMultiple steps are separated by comma. eg. -t 10,5"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_offset_position_o
  doc: offset position for extracting k-mer pairs (default -o 0, optional)
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_error_allowed_distance
  doc: error (%) allowed on -d distance   e.g. -e 0.1  == distance +/- 10% (default
    -e 0.1, optional)
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_minimum_number_links
  doc: minimum number of links (k-mer pairs) to compute scaffold (default -l 5, optional)
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_maximum_link_ratio
  doc: "maximum link ratio between two best contig pairs (default -a 0.3, optional)\n\
    *higher values lead to least accurate scaffolding*"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_minimum_contig_length
  doc: minimum contig length to consider for scaffolding (default -z 500, optional)
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_base_name_your
  doc: base name for your output files (optional)
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_bloom_filter_input
  doc: "Bloom filter input file for sequences supplied in -f (optional, if none provided\
    \ will output to .bloom)\nNOTE: BLOOM FILTER MUST BE DERIVED FROM THE SAME FILE\
    \ SUPPLIED IN -f WITH SAME -k VALUE\nIF YOU DO NOT SUPPLY A BLOOM FILTER, ONE\
    \ WILL BE CREATED (.bloom)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_bloom_filter_false
  doc: Bloom filter false positive rate (default -p 0.001, optional; increase to prevent
    memory allocation errors)
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_turn_filter_functionality
  doc: Turn off Bloom filter functionality (-x 1 = yes, default = no, optional)
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_runs_verbose_mode
  doc: Runs in verbose mode (-v 1 = yes, default = no, optional)
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- LINKS
