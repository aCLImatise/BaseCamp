#!/usr/bin/env cwl-runner

baseCommand:
- FalseDiscoveryRate
class: CommandLineTool
cwlVersion: v1.0
id: falsediscoveryrate
inputs:
- doc: "*              Identifications from searching a target-decoy database. (valid\
    \ formats: 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*             Identifications with annotated FDR (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Perform FDR calculation on PSM level (default: 'true' valid: 'true', 'false')"
  id: psm
  inputBinding:
    prefix: -PSM
  type: string
- doc: "Perform FDR calculation on protein level (default: 'true' valid: 'true', 'false')"
  id: protein
  inputBinding:
    prefix: -protein
  type: string
- doc: ":PSM <fraction>      Filter PSMs based on q-value (e.g., 0.05 = 5% FDR, disabled\
    \ for 1) (default: '1.0' min: '0.0' max: '1.0')"
  id: fdr
  inputBinding:
    prefix: -FDR
  type: boolean
- doc: ":protein <fraction>  Filter proteins based on q-value (e.g., 0.05 = 5% FDR,\
    \ disabled for 1) (default: '1.0' min: '0.0' max: '1.0')"
  id: fdr
  inputBinding:
    prefix: -FDR
  type: boolean
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
- doc: Parameter section for the FDR calculation algorithm
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
- doc: ://www.openms.de/documentation/TOPP_FalseDiscoveryRate.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
