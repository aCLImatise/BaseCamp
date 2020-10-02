class: CommandLineTool
id: closeGapsLocally.perl.cwl
inputs:
- id: in_celera_terminator_directory
  doc: ": specify the Celera terminator directory\nwhere the assembly whose gaps must\
    \ be closed exists"
  type: Directory
  inputBinding:
    prefix: --Celera-terminator-directory
- id: in_reads_file
  doc: ": specify a read file to use (multiple files allowed,\nso long as the flag\
    \ is repeated)"
  type: File
  inputBinding:
    prefix: --reads-file
- id: in_output_directory
  doc: ': specify the output directory'
  type: Directory
  inputBinding:
    prefix: --output-directory
- id: in_jellyfish_hash_size
  doc: '# : the jellyfish hash size'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_min_km_er_len
  doc: '# : specify the min kmer len used (default: 17)'
  type: boolean
  inputBinding:
    prefix: --min-kmer-len
- id: in_max_km_er_len
  doc: '# : specify the max kmer len used (default: 65)'
  type: boolean
  inputBinding:
    prefix: --max-kmer-len
- id: in_num_threads
  doc: '# : specify the number of threads (default: 1)'
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: in__same_
  doc: '# : same as --num-threads #'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_contig_length_for_joining
  doc: "# : The length of sequence at the ends of the contigs\nwhich create the faux\
    \ mate pairs which are joined (default: 100)"
  type: boolean
  inputBinding:
    prefix: --contig-length-for-joining
- id: in_contig_length_for_fishing
  doc: "# : The length of sequence at the ends of the contigs\nto be used to find\
    \ reads which might fit in the gaps (default: 100)"
  type: boolean
  inputBinding:
    prefix: --contig-length-for-fishing
- id: in_max_nodes
  doc: "# : The maximum number of nodes allowed when trying to join the\nfaux reads\
    \ (default: 200000)"
  type: boolean
  inputBinding:
    prefix: --maxnodes
- id: in_reduce_read_set_km_er_size
  doc: "# : The k-mer size for fishing reads into buckets.\n(default: 21)"
  type: boolean
  inputBinding:
    prefix: --reduce-read-set-kmer-size
- id: in_keep_directories
  doc: ': Keep the local directories (default: false)'
  type: boolean
  inputBinding:
    prefix: --keep-directories
- id: in_max_reads_in_memory
  doc: ": The maximum number of reads whose sequence can be kept\nin memory at one\
    \ time (default: 100000000)"
  type: boolean
  inputBinding:
    prefix: --max-reads-in-memory
- id: in_faux_insert_mean
  doc: ": The mean of the insert size used for the faux reads around\na gap (default:\
    \ 500)"
  type: boolean
  inputBinding:
    prefix: --faux-insert-mean
- id: in_faux_insert_stdev
  doc: ": The stdev of the insert size used for the faux reads around\na gap (default:\
    \ 200)"
  type: boolean
  inputBinding:
    prefix: --faux-insert-stdev
- id: in_num_stdev_s_allowed
  doc: "# : The maximum number of standard deviations that the\nlength of the join\
    \ can deviate from the estimate output\nby the Celera assembler. The standard\
    \ deviation generated\nby the Celera assembler is used. (default: 3)"
  type: boolean
  inputBinding:
    prefix: --num-stdevs-allowed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: ': specify the output directory'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- closeGapsLocally.perl
