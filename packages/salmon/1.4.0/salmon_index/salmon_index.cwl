class: CommandLineTool
id: salmon_index.cwl
inputs:
- id: in_print_version_string
  doc: '[ --version ]              print version string'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_transcript_fasta
  doc: '[ --transcripts ] arg      Transcript fasta file.'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_size_used
  doc: "[ --kmerLen ] arg (=31)    The size of k-mers that should be used for the\n\
    quasi index."
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_arg_salmon_index
  doc: '[ --index ] arg            salmon index.'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_gen_code
  doc: "This flag will expect the input transcript\nfasta to be in GENCODE format,\
    \ and will split\nthe transcript name at the first '|' character.\nThese reduced\
    \ names will be used in the output\nand when looking for these transcripts in\
    \ a\ngene to transcript GTF."
  type: boolean?
  inputBinding:
    prefix: --gencode
- id: in_features
  doc: "This flag will expect the input reference to be\nin the tsv file format, and\
    \ will split the\nfeature name at the first 'tab' character.\nThese reduced names\
    \ will be used in the output\nand when looking for the sequence of the\nfeatures.GTF."
  type: boolean?
  inputBinding:
    prefix: --features
- id: in_keep_duplicates
  doc: "This flag will disable the default indexing\nbehavior of discarding sequence-identical\n\
    duplicate transcripts.  If this flag is passed,\nthen duplicate transcripts that\
    \ appear in the\ninput will be retained and quantified\nseparately."
  type: boolean?
  inputBinding:
    prefix: --keepDuplicates
- id: in_arg_number_threads
  doc: '[ --threads ] arg (=2)     Number of threads to use during indexing.'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_keep_fixed_fast_a
  doc: "Retain the fixed fasta file (without short\ntranscripts and duplicates, clipped,\
    \ etc.)\ngenerated during indexing"
  type: boolean?
  inputBinding:
    prefix: --keepFixedFasta
- id: in_arg_size_be
  doc: "[ --filterSize ] arg (=-1) The size of the Bloom filter that will be used\n\
    by TwoPaCo during indexing. The filter will be\nof size 2^{filterSize}. The default\
    \ value of -1\nmeans that the filter size will be\nautomatically set based on\
    \ the number of\ndistinct k-mers in the input, as estimated by\nnthll."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_tmpdir
  doc: "The directory location that will be used for\nTwoPaCo temporary files; it\
    \ will be created if\nneed be and be removed prior to indexing\ncompletion. The\
    \ default value will cause a\n(temporary) subdirectory of the salmon index\ndirectory\
    \ to be used for this purpose."
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_sparse
  doc: "Build the index using a sparse sampling of\nk-mer positions This will require\
    \ less memory\n(especially during quantification), but will\ntake longer to construct\
    \ and can slow down\nmapping / alignment"
  type: boolean?
  inputBinding:
    prefix: --sparse
- id: in_arg_treat_sequences
  doc: "[ --decoys ] arg           Treat these sequences ids from the reference as\n\
    the decoys that may have sequence homologous to\nsome known transcript. for example\
    \ in case of\nthe genome, provide a list of chromosome name\n--- one per line"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_type
  doc: "(=puff)            The type of index to build; the only option is\n\"puff\"\
    \ in this version of salmon.\n"
  type: string?
  inputBinding:
    prefix: --type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/salmon:1.4.0--hf69c8f4_0
cwlVersion: v1.1
baseCommand:
- salmon
- index
