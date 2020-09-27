class: CommandLineTool
id: jpredapi.cwl
inputs:
- id: in_silent
  doc: Do not print messages.
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_extract
  doc: Extract results tar.gz archive.
  type: boolean
  inputBinding:
    prefix: --extract
- id: in_skip_pdb
  doc: PDB check.
  type: boolean
  inputBinding:
    prefix: --skipPDB
- id: in_mode
  doc: 'Submission mode, possible values: single, batch, msa.'
  type: string
  inputBinding:
    prefix: --mode
- id: in_format
  doc: 'Submission format, possible values: raw, fasta, msf, blc.'
  type: string
  inputBinding:
    prefix: --format
- id: in_file
  doc: Filename of a file with the job input (sequence(s)).
  type: File
  inputBinding:
    prefix: --file
- id: in_seq
  doc: Instead of passing input file, for single-sequence submission.
  type: File
  inputBinding:
    prefix: --seq
- id: in_email
  doc: E-mail address where job report will be sent (optional for all but batch submissions).
  type: string
  inputBinding:
    prefix: --email
- id: in_name
  doc: Job name.
  type: string
  inputBinding:
    prefix: --name
- id: in_jobid
  doc: Job id.
  type: string
  inputBinding:
    prefix: --jobid
- id: in_results
  doc: Path to directory where to save archive with results.
  type: File
  inputBinding:
    prefix: --results
- id: in_rest
  doc: 'REST address of server [default: http://www.compbio.dundee.ac.uk/jpred4/cgi-bin/rest].'
  type: long
  inputBinding:
    prefix: --rest
- id: in_jp_red_four
  doc: 'Address of Jpred4 server [default: http://www.compbio.dundee.ac.uk/jpred4].'
  type: long
  inputBinding:
    prefix: --jpred4
- id: in_wait
  doc: 'Wait interval before retrying to check job status in seconds [default: 60].'
  type: long
  inputBinding:
    prefix: --wait
- id: in_attempts
  doc: 'Maximum number of attempts to check job status [default: 10].'
  type: long
  inputBinding:
    prefix: --attempts
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_check_rest_version
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_get_results
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_quota
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_status
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_submit
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jpredapi
