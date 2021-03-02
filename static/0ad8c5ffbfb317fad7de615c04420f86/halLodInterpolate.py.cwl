class: CommandLineTool
id: halLodInterpolate.py.cwl
inputs:
- id: in_max_block
  doc: "maximum desired number of blocks to ever display at\nonce. (default: 223)"
  type: long?
  inputBinding:
    prefix: --maxBlock
- id: in_scale
  doc: "scaling factor between two successive levels of detail\n(default: 2.5)"
  type: double?
  inputBinding:
    prefix: --scale
- id: in_out_haldir
  doc: "path of directory where interpolated hal files are\nstored. By default they\
    \ will be stored in the same\ndirectory as the input file (default: None)"
  type: File?
  inputBinding:
    prefix: --outHalDir
- id: in_resume
  doc: "do not overwrite existing hal lod files if they exist.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --resume
- id: in_max_dna
  doc: "maximum DNA sequence query. Generated levels of detail\nwith associated minimum\
    \ query ranges > maxDNA will not\ncontain sequence information. -1 can be used\
    \ to\nspecify that all levels will get sequence (default: 0)"
  type: long?
  inputBinding:
    prefix: --maxDNA
- id: in_abs_path
  doc: "write absolute path of created HAL files in the\noutLodFile. By default, the\
    \ paths are relative to the\npath of the outLodFile. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --absPath
- id: in_trans
  doc: "Generate level of detail X from X-1. By default, all\nlevels of detail are\
    \ generated from the original HAL\n(X=0) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --trans
- id: in_in_memory
  doc: "Load entire hdf5 arrays into memory, overriding cache.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --inMemory
- id: in_probe_frac
  doc: "Fraction of bases in step-interval to sample while\nlooking for most aligned\
    \ column. Use default from\nhalLodExtract if not set. To see default value, use\n\
    halLodExtract --help (default: None)"
  type: string?
  inputBinding:
    prefix: --probeFrac
- id: in_min_seq_frac
  doc: "Minumum sequence length to sample as fraction of step\nsize: ie sequences\
    \ with length <= floor(minSeqFrac *\nstep) are ignored.Use default from halLodExtract\
    \ if\nnot set. To see default value, use halLodExtract\n--help (default: 0.5)"
  type: long?
  inputBinding:
    prefix: --minSeqFrac
- id: in_min_cov_frac
  doc: "Minimum fraction of a genome that must be covered by\nsequences that exceed\
    \ --minSeqFrac * step. LODs that\nwould violate this threshold will not be generated\
    \ (or\ndisplayed in the browser). This is seen a better than\nthe alternative,\
    \ which is to produce unreasonably\nsparse LODs because half the sequences were\
    \ not\nsampled (default: 0.9)"
  type: long?
  inputBinding:
    prefix: --minCovFrac
- id: in_scale_cor_fac
  doc: "Correction factor for scaling. Assume that scaling by\n(X * scaleCorFactor)\
    \ is required to reduce the number\nof blocks by X. (default: 1.0)"
  type: long?
  inputBinding:
    prefix: --scaleCorFac
- id: in_num_proc
  doc: 'Number of concurrent processes (default: 1)'
  type: long?
  inputBinding:
    prefix: --numProc
- id: in_chunk
  doc: 'Chunk size of output hal files. (default: None)'
  type: long?
  inputBinding:
    prefix: --chunk
- id: in_min_lod_zero
  doc: "Override other parameters to ensure that Lod0\n(original hal) gets range from\
    \ 0 to at least the\nspecified value (default: 0)"
  type: long?
  inputBinding:
    prefix: --minLod0
- id: in_cut_off
  doc: "Cut-off fraction for determining highest level of\ndetail. Normally, --maxBlocks\
    \ is used to determine the\nstep-size for each LOD, but the exponential scaling\n\
    can cause this to create final (highest) LODs that are\ntoo sparse. The lowerthis\
    \ parameter is (must stay >\n0), the sooner the LOD generation process will be\
    \ cut\noff, and the more fine-grained the highest LOD will be\n(default: 0.75)\n"
  type: long?
  inputBinding:
    prefix: --cutOff
- id: in_hal
  doc: input hal
  type: string
  inputBinding:
    position: 0
- id: in_out_lod_file
  doc: "output text file with links to interpolated hal files.\nwith each file is\
    \ associated a value stating its\nminimum suggested query range (in bases)"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- halLodInterpolate.py
