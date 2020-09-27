class: CommandLineTool
id: mccortex95.cwl
inputs:
- id: in_quiet
  doc: Silence status output normally printed to STDERR
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_force
  doc: Overwrite output files if they already exist
  type: boolean
  inputBinding:
    prefix: --force
- id: in_memory
  doc: 'Memory e.g. 1GB [default: 1GB]'
  type: long
  inputBinding:
    prefix: --memory
- id: in_nk_mers
  doc: 'Hash entries [default: 4M, ~4 million]'
  type: long
  inputBinding:
    prefix: --nkmers
- id: in_threads
  doc: 'Limit on proccessing threads [default: 2]'
  type: long
  inputBinding:
    prefix: --threads
- id: in_out
  doc: Output file
  type: File
  inputBinding:
    prefix: --out
- id: in_paths
  doc: Links file to load (can specify multiple times)
  type: File
  inputBinding:
    prefix: --paths
- id: in_breakpoints
  doc: use a trusted assembled genome to call large events
  type: string
  inputBinding:
    position: 0
- id: in_bubbles
  doc: find bubbles in graph which are potential variants
  type: string
  inputBinding:
    position: 1
- id: in_build
  doc: construct cortex graph from FASTA/FASTQ/BAM
  type: string
  inputBinding:
    position: 2
- id: in_calls_two_vcf
  doc: convert bubble/breakpoint calls to VCF
  type: long
  inputBinding:
    position: 3
- id: in_check
  doc: load and check graph (.ctx) and path (.ctp) files
  type: string
  inputBinding:
    position: 4
- id: in_clean
  doc: clean errors from a graph
  type: string
  inputBinding:
    position: 5
- id: in_contigs
  doc: assemble contigs for a sample
  type: string
  inputBinding:
    position: 6
- id: in_correct
  doc: error correct reads
  type: string
  inputBinding:
    position: 7
- id: in_coverage
  doc: print contig coverage
  type: string
  inputBinding:
    position: 8
- id: in_dist
  doc: make colour kmer distance matrix
  type: string
  inputBinding:
    position: 9
- id: in_index
  doc: index a sorted cortex graph file
  type: string
  inputBinding:
    position: 10
- id: in_infer_edges
  doc: infer graph edges between kmers before calling `thread`
  type: string
  inputBinding:
    position: 11
- id: in_join
  doc: combine graphs, filter graph intersections
  type: string
  inputBinding:
    position: 12
- id: in_links
  doc: clean and plot link files (.ctp)
  type: string
  inputBinding:
    position: 13
- id: in_p_join
  doc: merge link files (.ctp)
  type: string
  inputBinding:
    position: 14
- id: in_pop_bubbles
  doc: pop bubbles in the population graph
  type: string
  inputBinding:
    position: 15
- id: in_p_view
  doc: text view of a cortex link file (.ctp)
  type: string
  inputBinding:
    position: 16
- id: in_reads
  doc: filter reads against a graph
  type: string
  inputBinding:
    position: 17
- id: in_rm_substr
  doc: reduce set of strings to remove substrings
  type: string
  inputBinding:
    position: 18
- id: in_server
  doc: interactively query the graph
  type: string
  inputBinding:
    position: 19
- id: in_sort
  doc: sort the kmers in a graph file
  type: string
  inputBinding:
    position: 20
- id: in_subgraph
  doc: filter a subgraph using seed kmers
  type: string
  inputBinding:
    position: 21
- id: in_thread
  doc: thread reads through cleaned graph to make links
  type: string
  inputBinding:
    position: 22
- id: in_uniq_km_ers
  doc: generate random unique kmers
  type: string
  inputBinding:
    position: 23
- id: in_unit_igs
  doc: pull out unitigs in FASTA, DOT or GFA format
  type: string
  inputBinding:
    position: 24
- id: in_vcf_cov
  doc: coverage of a VCF against cortex graphs
  type: string
  inputBinding:
    position: 25
- id: in_vcf_geno
  doc: genotype a VCF after running vcfcov
  type: string
  inputBinding:
    position: 26
- id: in_view
  doc: text view of a cortex graph file (.ctx)
  type: string
  inputBinding:
    position: 27
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output file
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- mccortex95
