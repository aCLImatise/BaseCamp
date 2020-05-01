#!/usr/bin/env cwl-runner

baseCommand:
- log_and_glog_transformation.py
class: CommandLineTool
cwlVersion: v1.0
id: log_and_glog_transformation.py
inputs:
- doc: Input dataset in wide format.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Design file.
  id: design
  inputBinding:
    prefix: --design
  type: string
- doc: Name of the column with unique identifiers.
  id: uniqid
  inputBinding:
    prefix: --uniqID
  type: string
- doc: Type of transformation to use (log vs glog)
  id: transformation
  inputBinding:
    prefix: --transformation
  type: string
- doc: Base of the logarithm to use
  id: log_base
  inputBinding:
    prefix: --log_base
  type: string
- doc: Lambda parameter which is used only for G-Log transformation.
  id: lambda_value
  inputBinding:
    prefix: --lambda_value
  type: string
- doc: Output file name.
  id: o_name
  inputBinding:
    prefix: --oname
  type: string
- doc: Add debugging log output.
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
