#!/usr/bin/env cwl-runner

baseCommand:
- ogrtindex
class: CommandLineTool
cwlVersion: v1.0
id: ogrtindex
inputs:
- doc: ': by default ogrtindex checks that all layers inserted into the index have
    the same attribute schemas. If you specify this option, this test will be disabled.
    Be aware that resulting index may be incompatible with MapServer!'
  id: accept_different_schemas
  inputBinding:
    prefix: -accept_different_schemas
  type: boolean
