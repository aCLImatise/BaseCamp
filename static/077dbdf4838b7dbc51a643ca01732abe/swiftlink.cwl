class: CommandLineTool
id: swiftlink.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: (default = 'swiftlink.out')
  type: string
  inputBinding:
    prefix: --output
- id: i
  doc: ',     --iterations=NUM            (default = 50000)'
  type: string
  inputBinding:
    prefix: -i
- id: b
  doc: ',     --burnin=NUM                (default = 50000)'
  type: string
  inputBinding:
    prefix: -b
- id: s
  doc: ',     --sequentialimputation=NUM  (default = 1000)'
  type: string
  inputBinding:
    prefix: -s
- id: x
  doc: ',     --scoringperiod=NUM         (default = 10)'
  type: string
  inputBinding:
    prefix: -x
- id: l
  doc: ',   --lsamplerprobability=FLOAT (default = 0.5)'
  type: double
  inputBinding:
    prefix: -l
- id: n
  doc: ',     --lodscores=NUM             (default = 5)'
  type: string
  inputBinding:
    prefix: -n
- id: r
  doc: ',     --runs=NUM                  (default = 1)'
  type: string
  inputBinding:
    prefix: -R
- id: t
  doc: ',         --trace'
  type: boolean
  inputBinding:
    prefix: -T
- id: p
  doc: ",  --traceprefix=PREFIX        (default = 'trace')"
  type: string
  inputBinding:
    prefix: -P
- id: e
  doc: --elod
  type: boolean
  inputBinding:
    prefix: -e
- id: f
  doc: --frequency=FLOAT           (default = 1.0e-04)
  type: double
  inputBinding:
    prefix: -f
- id: w
  doc: --separation=FLOAT          (default = 0.0500)
  type: double
  inputBinding:
    prefix: -w
- id: k
  doc: ',FLOAT,FLOAT --penetrance=FLOAT,FLOAT,FLOAT(default = 0.00,0.00,1.00)'
  type: double
  inputBinding:
    prefix: -k
- id: u
  doc: --replicates=NUM            (default = 1000000)
  type: string
  inputBinding:
    prefix: -u
- id: c
  doc: ',     --cores=NUM                 (default = 1)'
  type: string
  inputBinding:
    prefix: -c
- id: g
  doc: ',         --gpu                       [UNAVAILABLE, COMPILED WITHOUT CUDA]'
  type: boolean
  inputBinding:
    prefix: -g
- id: v
  doc: ',         --verbose'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- swiftlink
