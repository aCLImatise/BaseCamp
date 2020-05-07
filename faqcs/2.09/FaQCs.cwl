class: CommandLineTool
id: FaQCs.cwl
inputs:
- id: adapter
  doc: '<bool> Trim reads with illumina adapter/primers (default: no)'
  type: boolean
  inputBinding:
    prefix: --adapter
- id: rate
  doc: "<FLOAT> Mismatch ratio of adapters' length (default: 0.2, allow 20% mismatches)"
  type: boolean
  inputBinding:
    prefix: --rate
- id: polya
  doc: <bool>  Trim poly A ( > 15 )
  type: boolean
  inputBinding:
    prefix: --polyA
- id: artifact_file
  doc: <File> additional artifact (adapters/primers/contaminations) reference file
    in fasta format
  type: boolean
  inputBinding:
    prefix: --artifactFile
- id: min_l
  doc: <INT> Trimmed read should have to be at least this minimum length (default:50)
  type: boolean
  inputBinding:
    prefix: --min_L
- id: avg_q
  doc: <NUM> Average quality cutoff (default:0, no filtering)
  type: boolean
  inputBinding:
    prefix: --avg_q
- id: n
  doc: '<INT> Trimmed read has greater than or equal to this number of continuous
    base "N" will be discarded. (default: 2, "NN")'
  type: boolean
  inputBinding:
    prefix: -n
- id: lc
  doc: '<FLOAT> Low complexity filter ratio, Maximum fraction of mono-/di-nucleotide
    sequence  (default: 0.85)'
  type: boolean
  inputBinding:
    prefix: --lc
- id: phi_x
  doc: <bool> Filter phiX reads (slow)
  type: boolean
  inputBinding:
    prefix: --phiX
- id: ascii
  doc: 'Encoding type: 33 or 64 or autoCheck (default) Type of ASCII encoding: 33
    (standard) or 64 (illumina 1.3+)'
  type: boolean
  inputBinding:
    prefix: --ascii
- id: out_ascii
  doc: 'Output encoding. (default: 33)'
  type: boolean
  inputBinding:
    prefix: --out_ascii
- id: prefix
  doc: '<TEXT> Output file prefix. (default: QC)'
  type: boolean
  inputBinding:
    prefix: --prefix
- id: stats
  doc: '<File> Statistical numbers output file (default: prefix.stats.txt)'
  type: boolean
  inputBinding:
    prefix: --stats
- id: d
  doc: <PATH> Output directory.
  type: boolean
  inputBinding:
    prefix: -d
- id: debug
  doc: <bool> Keep intermediate files
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- FaQCs
