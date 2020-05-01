#!/usr/bin/env cwl-runner

baseCommand:
- csb-buildhmm
class: CommandLineTool
cwlVersion: v1.0
id: csb-buildhmm
inputs:
- doc: input sequence (FASTA or PDB file)
  id: query
  inputBinding:
    position: 0
  type: string
- doc: ID of the query, in PDB-like format (accessionCHAIN).Used for naming the output
    files. Also, if the input is a PDB file with multiple chains, CHAIN is used to
    pull the required chain from the file.
  id: query_id
  inputBinding:
    prefix: --query-id
  type: string
- doc: path to the ToolkitRoot folder in your HHsuite setup (default=/ebio/abt1_toolkit/share/wye)
  id: tk_root
  inputBinding:
    prefix: --tk-root
  type: string
- doc: custom HHblits database; if not defined, toolkit's unirpto20 will be used
  id: database
  inputBinding:
    prefix: --database
  type: string
- doc: path to a folder containing custom HHsuite configs (e.g. HHPaths.pm) (default=.)
  id: tk_config
  inputBinding:
    prefix: --tk-config
  type: string
- doc: maximum degree of parallelism (default=1)
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
- doc: do not include secondary structure (default=False)
  id: no_ss
  inputBinding:
    prefix: --no-ss
  type: boolean
- doc: do not add emission and transition pseudocounts (default=False)
  id: no_pseudo
  inputBinding:
    prefix: --no-pseudo
  type: boolean
- doc: do not calibrate the profile (default=False)
  id: no_calibration
  inputBinding:
    prefix: --no-calibration
  type: boolean
