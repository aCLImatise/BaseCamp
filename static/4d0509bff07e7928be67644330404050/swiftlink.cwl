class: CommandLineTool
id: ../../../swiftlink.cwl
inputs:
- id: output
  doc: (default = 'swiftlink.out')
  type: string
  inputBinding:
    prefix: --output
- id: _iterationsnum_default
  doc: ',     --iterations=NUM            (default = 50000)'
  type: string
  inputBinding:
    prefix: -i
- id: _burninnum_default
  doc: ',     --burnin=NUM                (default = 50000)'
  type: string
  inputBinding:
    prefix: -b
- id: _sequentialimputationnum_default
  doc: ',     --sequentialimputation=NUM  (default = 1000)'
  type: string
  inputBinding:
    prefix: -s
- id: _scoringperiodnum_default
  doc: ',     --scoringperiod=NUM         (default = 10)'
  type: string
  inputBinding:
    prefix: -x
- id: _lsamplerprobabilityfloat_default
  doc: ',   --lsamplerprobability=FLOAT (default = 0.5)'
  type: double
  inputBinding:
    prefix: -l
- id: _lodscoresnum_default
  doc: ',     --lodscores=NUM             (default = 5)'
  type: string
  inputBinding:
    prefix: -n
- id: _runsnum_default
  doc: ',     --runs=NUM                  (default = 1)'
  type: string
  inputBinding:
    prefix: -R
- id: __trace
  doc: ',         --trace'
  type: boolean
  inputBinding:
    prefix: -T
- id: _traceprefixprefix_default
  doc: ",  --traceprefix=PREFIX        (default = 'trace')"
  type: string
  inputBinding:
    prefix: -P
- id: _elod
  doc: --elod
  type: boolean
  inputBinding:
    prefix: -e
- id: _frequencyfloat_default
  doc: --frequency=FLOAT           (default = 1.0e-04)
  type: double
  inputBinding:
    prefix: -f
- id: _separationfloat_default
  doc: --separation=FLOAT          (default = 0.0500)
  type: double
  inputBinding:
    prefix: -w
- id: floatfloat__penetrancefloatfloatfloatdefault
  doc: ',FLOAT,FLOAT --penetrance=FLOAT,FLOAT,FLOAT(default = 0.00,0.00,1.00)'
  type: double
  inputBinding:
    prefix: -k
- id: _replicatesnum_default
  doc: --replicates=NUM            (default = 1000000)
  type: string
  inputBinding:
    prefix: -u
- id: _coresnum_default
  doc: ',     --cores=NUM                 (default = 1)'
  type: string
  inputBinding:
    prefix: -c
- id: __gpu
  doc: ',         --gpu                       [UNAVAILABLE, COMPILED WITHOUT CUDA]'
  type: boolean
  inputBinding:
    prefix: -g
- id: __verbose
  doc: ',         --verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: var_18
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- swiftlink
