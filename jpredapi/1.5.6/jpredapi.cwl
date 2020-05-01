#!/usr/bin/env cwl-runner

baseCommand:
- jpredapi
class: CommandLineTool
cwlVersion: v1.0
id: jpredapi
inputs:
- doc: Do not print messages.
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: Extract results tar.gz archive.
  id: extract
  inputBinding:
    prefix: --extract
  type: boolean
- doc: PDB check.
  id: skip_pdb
  inputBinding:
    prefix: --skipPDB
  type: boolean
- doc: 'Submission mode, possible values: single, batch, msa.'
  id: mode
  inputBinding:
    prefix: --mode
  type: string
- doc: 'Submission format, possible values: raw, fasta, msf, blc.'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: Filename of a file with the job input (sequence(s)).
  id: file
  inputBinding:
    prefix: --file
  type: File
- doc: Instead of passing input file, for single-sequence submission.
  id: seq
  inputBinding:
    prefix: --seq
  type: string
- doc: =<name@domain.com>  E-mail address where job report will be sent (optional
    for all but batch submissions).
  id: email
  inputBinding:
    prefix: --email
  type: boolean
- doc: Job name.
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: Job id.
  id: jobid
  inputBinding:
    prefix: --jobid
  type: string
- doc: Path to directory where to save archive with results.
  id: results
  inputBinding:
    prefix: --results
  type: File
- doc: 'REST address of server [default: http://www.compbio.dundee.ac.uk/jpred4/cgi-bin/rest].'
  id: rest
  inputBinding:
    prefix: --rest
  type: string
- doc: 'Address of Jpred4 server [default: http://www.compbio.dundee.ac.uk/jpred4].'
  id: jpred4
  inputBinding:
    prefix: --jpred4
  type: string
- doc: 'Wait interval before retrying to check job status in seconds [default: 60].'
  id: wait
  inputBinding:
    prefix: --wait
  type: long
- doc: 'Maximum number of attempts to check job status [default: 10].'
  id: attempts
  inputBinding:
    prefix: --attempts
  type: long
