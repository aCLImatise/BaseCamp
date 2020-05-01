#!/usr/bin/env cwl-runner

baseCommand:
- pout2mzid
class: CommandLineTool
cwlVersion: v1.0
id: pout2mzid
inputs:
- doc: '[ --percolatorfile ] [Value] Percolator Out XML result file'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --mzidfile ] [Value]       MzIdentML input file'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '[ --inputdir ] [Value]       Sets the mzIdentML input directory. All  mzIdentML
    inputfiles must be in that  directory'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[ --changeoutput ] [Value]   Change the outputfile to original  filename+[Value]+.mzid.
    DEFAULT: output to stdout'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '[ --outputdir ] [Value]      Sets the output directory if none exist, it  will
    be created.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --filesmzid ] [Value]      File containing a list of mzIdentML filenames'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --decoy ]                  Only adds results to entries with decoy set  to
    true. DEFAULT: false'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '[ --validate ]               Sets that validation of XML schema should not
    be performed. Faster parsing.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: '[ --warning ]                Sets that upon warning the software should  terminate.'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
