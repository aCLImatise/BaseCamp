class: CommandLineTool
id: jpredapi.cwl
inputs:
- id: silent
  doc: Do not print messages.
  type: boolean
  inputBinding:
    prefix: --silent
- id: extract
  doc: Extract results tar.gz archive.
  type: boolean
  inputBinding:
    prefix: --extract
- id: skip_pdb
  doc: PDB check.
  type: boolean
  inputBinding:
    prefix: --skipPDB
- id: mode
  doc: 'Submission mode, possible values: single, batch, msa.'
  type: string
  inputBinding:
    prefix: --mode
- id: format
  doc: 'Submission format, possible values: raw, fasta, msf, blc.'
  type: string
  inputBinding:
    prefix: --format
- id: file
  doc: Filename of a file with the job input (sequence(s)).
  type: File
  inputBinding:
    prefix: --file
- id: seq
  doc: Instead of passing input file, for single-sequence submission.
  type: string
  inputBinding:
    prefix: --seq
- id: email
  doc: =<name@domain.com>  E-mail address where job report will be sent (optional
    for all but batch submissions).
  type: boolean
  inputBinding:
    prefix: --email
- id: name
  doc: Job name.
  type: string
  inputBinding:
    prefix: --name
- id: jobid
  doc: Job id.
  type: string
  inputBinding:
    prefix: --jobid
- id: results
  doc: Path to directory where to save archive with results.
  type: File
  inputBinding:
    prefix: --results
- id: rest
  doc: 'REST address of server [default: http://www.compbio.dundee.ac.uk/jpred4/cgi-bin/rest].'
  type: string
  inputBinding:
    prefix: --rest
- id: jpred4
  doc: 'Address of Jpred4 server [default: http://www.compbio.dundee.ac.uk/jpred4].'
  type: string
  inputBinding:
    prefix: --jpred4
- id: wait
  doc: 'Wait interval before retrying to check job status in seconds [default: 60].'
  type: long
  inputBinding:
    prefix: --wait
- id: attempts
  doc: 'Maximum number of attempts to check job status [default: 10].'
  type: long
  inputBinding:
    prefix: --attempts
outputs: []
cwlVersion: v1.1
baseCommand:
- jpredapi
