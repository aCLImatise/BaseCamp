class: CommandLineTool
id: swiftlink.cwl
inputs:
- id: in_pedigree
  doc: "-m mapfile, --map=mapfile\n-d datfile, --dat=datfile"
  type: File
  inputBinding:
    prefix: --pedigree
- id: in_output
  doc: (default = 'swiftlink.out')
  type: string
  inputBinding:
    prefix: --output
- id: in__iterationsnum_default
  doc: ',     --iterations=NUM            (default = 50000)'
  type: long
  inputBinding:
    prefix: -i
- id: in__burninnum_default
  doc: ',     --burnin=NUM                (default = 50000)'
  type: long
  inputBinding:
    prefix: -b
- id: in__sequentialimputationnum_default
  doc: ',     --sequentialimputation=NUM  (default = 1000)'
  type: long
  inputBinding:
    prefix: -s
- id: in__scoringperiodnum_default
  doc: ',     --scoringperiod=NUM         (default = 10)'
  type: long
  inputBinding:
    prefix: -x
- id: in__lsamplerprobabilityfloat_default
  doc: ',   --lsamplerprobability=FLOAT (default = 0.5)'
  type: double
  inputBinding:
    prefix: -l
- id: in__lodscoresnum_default
  doc: ',     --lodscores=NUM             (default = 5)'
  type: long
  inputBinding:
    prefix: -n
- id: in__runsnum_default
  doc: ',     --runs=NUM                  (default = 1)'
  type: long
  inputBinding:
    prefix: -R
- id: in___trace
  doc: ',         --trace'
  type: boolean
  inputBinding:
    prefix: -T
- id: in__traceprefixprefix_default
  doc: ",  --traceprefix=PREFIX        (default = 'trace')"
  type: string
  inputBinding:
    prefix: -P
- id: in__elod
  doc: --elod
  type: boolean
  inputBinding:
    prefix: -e
- id: in__frequencyfloat_default
  doc: --frequency=FLOAT           (default = 1.0e-04)
  type: double
  inputBinding:
    prefix: -f
- id: in__separationfloat_default
  doc: --separation=FLOAT          (default = 0.0500)
  type: double
  inputBinding:
    prefix: -w
- id: in_floatfloat__penetrancefloatfloatfloatdefault
  doc: ',FLOAT,FLOAT --penetrance=FLOAT,FLOAT,FLOAT(default = 0.00,0.00,1.00)'
  type: double
  inputBinding:
    prefix: -k
- id: in__replicatesnum_default
  doc: --replicates=NUM            (default = 1000000)
  type: long
  inputBinding:
    prefix: -u
- id: in__coresnum_default
  doc: ',     --cores=NUM                 (default = 1)'
  type: long
  inputBinding:
    prefix: -c
- id: in___gpu
  doc: ',         --gpu                       [UNAVAILABLE, COMPILED WITHOUT CUDA]'
  type: boolean
  inputBinding:
    prefix: -g
- id: in__sexlinkeda_affectedonlyq
  doc: ",         --sexlinked\n-a,         --affectedonly\n-q NUM,     --peelseqiter=NUM\
    \           (default = 1000000)\n-r seedfile,--randomseeds=seedfile\n-v,     \
    \    --verbose\n-h,         --help\n"
  type: boolean
  inputBinding:
    prefix: -X
- id: in_d
  doc: ''
  type: File
  inputBinding:
    prefix: -d
- id: in_m
  doc: ''
  type: File
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- swiftlink
