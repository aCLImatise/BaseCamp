class: CommandLineTool
id: mapseq.cwl
inputs:
- id: in_n_threads
  doc: '<int>  number of threads to use [default: 4]'
  type: boolean?
  inputBinding:
    prefix: -nthreads
- id: in_top_hits
  doc: '<int>  number of reference sequences to include in alignment phase [default:
    20]'
  type: boolean?
  inputBinding:
    prefix: -tophits
- id: in_to_potus
  doc: '<int>  number of internal reference otus to include in alignment phase [default:
    10]'
  type: boolean?
  inputBinding:
    prefix: -topotus
- id: in_min_score
  doc: '<int>  minimum score cutoff to consider for a classification, should be reduced
    when searching very small sequences, i.e.: primer search [default: 30]'
  type: boolean?
  inputBinding:
    prefix: -minscore
- id: in_mini_done
  doc: '<int>  minimum number of shared kmers to consider hit in second phase kmer
    search [default: 1]'
  type: boolean?
  inputBinding:
    prefix: -minid1
- id: in_mini_d_two
  doc: '<int>  minimum number of shared kmers to consider hit in alignment phase [default:
    1]'
  type: boolean?
  inputBinding:
    prefix: -minid2
- id: in_otu_lim
  doc: '<int>  number of sequences per internal cluster to include in alignment phase
    [default: 50]'
  type: boolean?
  inputBinding:
    prefix: -otulim
- id: in_print_hits
  doc: outputs list of top hits for each input sequence
  type: boolean?
  inputBinding:
    prefix: -print_hits
- id: in_print_align
  doc: outputs alignments
  type: boolean?
  inputBinding:
    prefix: -print_align
- id: in_otu_counts
  doc: "<sample1.mseq>\ncomputes summary of classification counts from the classification\
    \ output file"
  type: File?
  inputBinding:
    prefix: -otucounts
- id: in_otu_table
  doc: "<sample1.mseq> [sample2.mseq [...]]\ngenerates a tsv file with taxonomic labels\
    \ as rows and samples as columns from classification output files"
  type: File?
  inputBinding:
    prefix: -otutable
- id: in_input_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_otu_counts
  doc: "<sample1.mseq>\ncomputes summary of classification counts from the classification\
    \ output file"
  type: File?
  outputBinding:
    glob: $(inputs.in_otu_counts)
- id: out_otu_table
  doc: "<sample1.mseq> [sample2.mseq [...]]\ngenerates a tsv file with taxonomic labels\
    \ as rows and samples as columns from classification output files"
  type: File?
  outputBinding:
    glob: $(inputs.in_otu_table)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mapseq:1.2.6--h8dc0705_0
cwlVersion: v1.1
baseCommand:
- mapseq
