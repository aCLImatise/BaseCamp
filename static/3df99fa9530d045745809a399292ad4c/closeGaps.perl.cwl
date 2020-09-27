class: CommandLineTool
id: closeGaps.perl.cwl
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
  doc: '# : specify the jellyfish hash size'
  type: boolean
  inputBinding:
    prefix: --jellyfish-hash-size
- id: in_min_km_er_len
  doc: '# : specify the min kmer len used (default: 17)'
  type: boolean
  inputBinding:
    prefix: --min-kmer-len
- id: in_max_km_er_len
  doc: '# : specify the max kmer len used (default: 31)'
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
- id: in_use_all_k_unit_igs
  doc: ": Use k-unitigs which are the k-mer length as well as all those longer than\n\
    the k-mer length. (The default is not to use k-unis of the k-mer length)"
  type: boolean
  inputBinding:
    prefix: --use-all-kunitigs
- id: in_max_nodes
  doc: "# : The maximum number of nodes allowed when trying to join the\nfaux reads\
    \ (default: 2000)"
  type: boolean
  inputBinding:
    prefix: --maxnodes
- id: in_kuni_tig_continuation_number
  doc: "# : specify the number to continue when running\ncreate_k_unitigs (the -m\
    \ and -M options to that program)\n(currently \"invalidated\") (default: 2)"
  type: boolean
  inputBinding:
    prefix: --kunitig-continuation-number
- id: in_dir_for_k_unit_igs
  doc: ": specifies the directory to get k-unitigs from\nif we have them"
  type: Directory
  inputBinding:
    prefix: --dir-for-kunitigs
- id: in_reduce_read_set
  doc: "# : Start by reducing the read set to only those that\nmatch a k-unitig from\
    \ the genomic sequences surrounding\na gap. The number specifies the k-mer size\
    \ used to\nfind these matches. (Don't make it too small.)"
  type: boolean
  inputBinding:
    prefix: --reduce-read-set
- id: in_contig_length_for_fishing
  doc: "# : The length of sequence at the ends of the contigs\nto be used to find\
    \ reads which might fit in the gaps (default: 100)"
  type: boolean
  inputBinding:
    prefix: --contig-length-for-fishing
- id: in_no_clean
  doc: ": Don't clean up after the run"
  type: boolean
  inputBinding:
    prefix: --noclean
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
- closeGaps.perl
