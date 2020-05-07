class: CommandLineTool
id: halLodInterpolate.py.cwl
inputs:
- id: hal
  doc: input hal
  type: string
  inputBinding:
    position: 0
- id: out_lod_file
  doc: output text file with links to interpolated hal files. with each file is associated
    a value stating its minimum suggested query range (in bases)
  type: string
  inputBinding:
    position: 1
- id: max_block
  doc: 'maximum desired number of blocks to ever display at once. (default: 223)'
  type: long
  inputBinding:
    prefix: --maxBlock
- id: scale
  doc: 'scaling factor between two successive levels of detail (default: 2.5)'
  type: string
  inputBinding:
    prefix: --scale
- id: out_haldir
  doc: 'path of directory where interpolated hal files are stored. By default they
    will be stored in the same directory as the input file (default: None)'
  type: string
  inputBinding:
    prefix: --outHalDir
- id: resume
  doc: 'do not overwrite existing hal lod files if they exist. (default: False)'
  type: boolean
  inputBinding:
    prefix: --resume
- id: max_dna
  doc: 'maximum DNA sequence query. Generated levels of detail with associated minimum
    query ranges > maxDNA will not contain sequence information. -1 can be used to
    specify that all levels will get sequence (default: 0)'
  type: long
  inputBinding:
    prefix: --maxDNA
- id: abs_path
  doc: 'write absolute path of created HAL files in the outLodFile. By default, the
    paths are relative to the path of the outLodFile. (default: False)'
  type: boolean
  inputBinding:
    prefix: --absPath
- id: trans
  doc: 'Generate level of detail X from X-1. By default, all levels of detail are
    generated from the original HAL (X=0) (default: False)'
  type: boolean
  inputBinding:
    prefix: --trans
- id: in_memory
  doc: 'Load entire hdf5 arrays into memory, overriding cache. (default: False)'
  type: boolean
  inputBinding:
    prefix: --inMemory
- id: probe_frac
  doc: 'Fraction of bases in step-interval to sample while looking for most aligned
    column. Use default from halLodExtract if not set. To see default value, use halLodExtract
    --help (default: None)'
  type: string
  inputBinding:
    prefix: --probeFrac
- id: min_seq_frac
  doc: 'Minumum sequence length to sample as fraction of step size: ie sequences with
    length <= floor(minSeqFrac * step) are ignored.Use default from halLodExtract
    if not set. To see default value, use halLodExtract --help (default: 0.5)'
  type: long
  inputBinding:
    prefix: --minSeqFrac
- id: min_cov_frac
  doc: 'Minimum fraction of a genome that must be covered by sequences that exceed
    --minSeqFrac * step. LODs that would violate this threshold will not be generated
    (or displayed in the browser). This is seen a better than the alternative, which
    is to produce unreasonably sparse LODs because half the sequences were not sampled
    (default: 0.9)'
  type: long
  inputBinding:
    prefix: --minCovFrac
- id: scale_cor_fac
  doc: 'Correction factor for scaling. Assume that scaling by (X * scaleCorFactor)
    is required to reduce the number of blocks by X. (default: 1.0)'
  type: string
  inputBinding:
    prefix: --scaleCorFac
- id: num_proc
  doc: 'Number of concurrent processes (default: 1)'
  type: string
  inputBinding:
    prefix: --numProc
- id: chunk
  doc: 'Chunk size of output hal files. (default: None)'
  type: string
  inputBinding:
    prefix: --chunk
- id: minlod0
  doc: 'Override other parameters to ensure that Lod0 (original hal) gets range from
    0 to at least the specified value (default: 0)'
  type: long
  inputBinding:
    prefix: --minLod0
- id: cut_off
  doc: 'Cut-off fraction for determining highest level of detail. Normally, --maxBlocks
    is used to determine the step-size for each LOD, but the exponential scaling can
    cause this to create final (highest) LODs that are too sparse. The lowerthis parameter
    is (must stay > 0), the sooner the LOD generation process will be cut off, and
    the more fine-grained the highest LOD will be (default: 0.75)'
  type: string
  inputBinding:
    prefix: --cutOff
outputs: []
cwlVersion: v1.1
baseCommand:
- halLodInterpolate.py
