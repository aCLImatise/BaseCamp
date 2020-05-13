class: CommandLineTool
id: pout2mzid.cwl
inputs:
- id: p
  doc: '[ --percolatorfile ] [Value] Percolator Out XML result file'
  type: boolean
  inputBinding:
    prefix: -p
- id: m
  doc: '[ --mzidfile ] [Value]       MzIdentML input file'
  type: boolean
  inputBinding:
    prefix: -m
- id: i
  doc: '[ --inputdir ] [Value]       Sets the mzIdentML input directory. All  mzIdentML
    inputfiles must be in that  directory'
  type: boolean
  inputBinding:
    prefix: -i
- id: c
  doc: '[ --changeoutput ] [Value]   Change the outputfile to original  filename+[Value]+.mzid.
    DEFAULT: output to stdout'
  type: boolean
  inputBinding:
    prefix: -c
- id: o
  doc: '[ --outputdir ] [Value]      Sets the output directory if none exist, it  will
    be created.'
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: '[ --filesmzid ] [Value]      File containing a list of mzIdentML filenames'
  type: boolean
  inputBinding:
    prefix: -f
- id: d
  doc: '[ --decoy ]                  Only adds results to entries with decoy set  to
    true. DEFAULT: false'
  type: boolean
  inputBinding:
    prefix: -d
- id: v
  doc: '[ --validate ]               Sets that validation of XML schema should not
    be performed. Faster parsing.'
  type: boolean
  inputBinding:
    prefix: -v
- id: w
  doc: '[ --warning ]                Sets that upon warning the software should  terminate.'
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- pout2mzid
