class: CommandLineTool
id: crypto_typer.cwl
inputs:
- id: verbose
  doc: Turn on verbose logging [False].
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input
  doc: Path to directory with AB1 forward and reverse files OR path to a single AB1
    file
  type: string
  inputBinding:
    prefix: --input
- id: marker
  doc: Name of the marker. Currently gp60 and 18S markers are supported
  type: string
  inputBinding:
    prefix: --marker
- id: seqtype
  doc: 'Input sequences type. Select one option out of these three: contig - both
    F and R sequences provided forward - forward only sequence provided reverse -
    reverse only sequence provided'
  type: string
  inputBinding:
    prefix: --seqtype
- id: forward_primer_name
  doc: Name of the forward primer to identify forward read (e.g. gp60F, SSUF)
  type: string
  inputBinding:
    prefix: --forwardprimername
- id: reverse_primer_name
  doc: Name of the reverse primer to identify forward read (e.g. gp60R, SSUR)
  type: string
  inputBinding:
    prefix: --reverseprimername
- id: output_prefix
  doc: Output name prefix for the results (e.g. test results in test_report.fa)
  type: string
  inputBinding:
    prefix: --outputprefix
outputs: []
cwlVersion: v1.1
baseCommand:
- crypto_typer
