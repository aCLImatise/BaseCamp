class: CommandLineTool
id: snap_aligner_index.cwl
inputs:
- id: in_seed_size_default
  doc: 'Seed size (default: 20)'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_h_gone_nine
  doc: Use pre-computed table bias for hg19, which results in better speed, balance,
    and a smaller index, but only works for the complete human reference.
  type: boolean
  inputBinding:
    prefix: -hg19
- id: in_of_actor
  doc: This parameter is deprecated and will be ignored.
  type: boolean
  inputBinding:
    prefix: -Ofactor
- id: in_tmax_threads
  doc: Specify the maximum number of threads to use. Default is the number of cores.
  type: boolean
  inputBinding:
    prefix: -tMaxThreads
- id: in_chars_specify_characters
  doc: "<chars>         Specify characters to use as chromosome name terminators in\
    \ the FASTA header line; these characters and anything after are\nnot part of\
    \ the chromosome name.  You must specify all characters on a single -B switch.\
    \  So, for example, with -B_|,\nthe FASTA header line '>chr1|Chromosome 1' would\
    \ generate a chromosome named 'chr1'.  There's a separate flag for\nindicating\
    \ that a space is a terminator."
  type: boolean
  inputBinding:
    prefix: -B
- id: in_b_space
  doc: "Indicates that the space character is a terminator for chromosome names (see\
    \ -B above).  This may be used in addition\nto other terminators specified by\
    \ -B.  -B and -bSpace are case sensitive."
  type: boolean
  inputBinding:
    prefix: -bSpace
- id: in_pp_adding
  doc: "Specify the number of Ns to put as padding between chromosomes.  This must\
    \ be as large as the largest\nedit distance you'll ever use, and there's a performance\
    \ advantage to have it be bigger than any\nread you'll process.  Default is 500"
  type: boolean
  inputBinding:
    prefix: -pPadding
- id: in_h_histogram_file
  doc: Build a histogram of seed popularity.  This is just for information, it's not
    used by SNAP.
  type: boolean
  inputBinding:
    prefix: -HHistogramFile
- id: in_exact
  doc: Compute hash table sizes exactly.  This will slow down index build, but usually
    will result in smaller indices.
  type: boolean
  inputBinding:
    prefix: -exact
- id: in_key_size
  doc: "The number of bytes to use for the hash table key.  Larger values increase\
    \ SNAP's memory footprint, but allow larger seeds.  Default: 4"
  type: boolean
  inputBinding:
    prefix: -keysize
- id: in_large
  doc: "Build a larger index that's a little faster, particualrly for runs with quick/inaccurate\
    \ parameters.  Increases index size by\nabout 30%, depending on the other index\
    \ parameters and the contents of the reference genome"
  type: boolean
  inputBinding:
    prefix: -large
- id: in_location_size
  doc: "The size of the genome locations stored in the index.  This can be from 4\
    \ to 8 bytes.  The locations need to be big enough\nnot only to index the genome,\
    \ but also to allow some space for representing seeds that occur multiple times.\
    \  For the\nhuman genome, it will fit with four byte locations if the seed size\
    \ is 19 or larger, but needs 5 (or more) for smaller\nseeds.  Making the location\
    \ size bigger than necessary will just waste (lots of) space, so unless you're\
    \ doing something\nquite unusual, the right answer is 4 or 5.  Default is 4"
  type: boolean
  inputBinding:
    prefix: -locationSize
- id: in_sm
  doc: "Use a temp file to work better in smaller memory.  This only helps a little,\
    \ but can be the difference if you're close.\nIn particular, this will generally\
    \ use less memory than the index will use once it's built, so if this doesn't\
    \ work you\nwon't be able to use the index anyway. However, if you've got sufficient\
    \ memory to begin with, this option will just\nslow down the index build by doing\
    \ extra, useless IO.\n"
  type: boolean
  inputBinding:
    prefix: -sm
- id: in_input_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- snap-aligner
- index
