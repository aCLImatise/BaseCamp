class: CommandLineTool
id: parsnp.cwl
inputs:
- id: c
  doc: '= <flag>: (c)urated genome directory, use all genomes in dir and ignore MUMi?
    (default = NO)'
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: '= <path>: (d)irectory containing genomes/contigs/scaffolds'
  type: boolean
  inputBinding:
    prefix: -d
- id: r
  doc: '= <path>: (r)eference genome (set to ! to pick random one from genome dir)'
  type: boolean
  inputBinding:
    prefix: -r
- id: g
  doc: '= <string>: Gen(b)ank file(s) (gbk), comma separated list (default = None)'
  type: boolean
  inputBinding:
    prefix: -g
- id: o
  doc: '= <string>: output directory? default [./P_CURRDATE_CURRTIME]'
  type: boolean
  inputBinding:
    prefix: -o
- id: q
  doc: '= <path>: (optional) specify (assembled) query genome to use, in addition
    to genomes found in genome dir (default = NONE)'
  type: boolean
  inputBinding:
    prefix: -q
- id: u
  doc: '= <float>: max MUMi distance value for MUMi distribution '
  type: boolean
  inputBinding:
    prefix: -U
- id: m
  doc: '= <flag>: calculate MUMi and exit? overrides all other choices! (default:
    NO)'
  type: boolean
  inputBinding:
    prefix: -M
- id: i
  doc: '= <float>: max MUM(i) distance (default: autocutoff based on distribution
    of MUMi values)'
  type: boolean
  inputBinding:
    prefix: -i
- id: a
  doc: '= <int>: min (a)NCHOR length (default = 1.1*Log(S))'
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: '= <int>: maximal cluster D value? (default=100)'
  type: boolean
  inputBinding:
    prefix: -C
- id: z
  doc: '= <path>: min LCB si(z)e? (default = 25)'
  type: boolean
  inputBinding:
    prefix: -z
- id: d
  doc: '= <float>: maximal diagonal difference? Either percentage (e.g. 0.2) or bp
    (e.g. 100bp) (default = 0.12)'
  type: boolean
  inputBinding:
    prefix: -D
- id: e
  doc: = <flag> greedily extend LCBs? experimental! (default = NO)
  type: boolean
  inputBinding:
    prefix: -e
- id: n
  doc: '= <string>: alignment program (default: libMUSCLE)'
  type: boolean
  inputBinding:
    prefix: -n
- id: u
  doc: '= <flag>: output unaligned regions? .unaligned (default: NO)'
  type: boolean
  inputBinding:
    prefix: -u
- id: x
  doc: '= <flag>: enable filtering of SNPs located in PhiPack identified regions of
    recombination? (default: NO)'
  type: boolean
  inputBinding:
    prefix: -x
- id: p
  doc: '= <int>: number of threads to use? (default= 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: p
  doc: '= <int>: max partition size? limits memory usage (default= 15000000)'
  type: boolean
  inputBinding:
    prefix: -P
- id: v
  doc: '= <flag>: (v)erbose output? (default = NO)'
  type: boolean
  inputBinding:
    prefix: -v
- id: v
  doc: '= <flag>: output (V)ersion and exit'
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- parsnp
