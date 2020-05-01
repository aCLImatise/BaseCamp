#!/usr/bin/env cwl-runner

baseCommand:
- jq
class: CommandLineTool
cwlVersion: v1.0
id: jq
inputs:
- doc: compact instead of pretty-printed output;
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: use `null` as the single input value;
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: set the exit status code based on the output;
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: read (slurp) all inputs into an array; apply filter to it;
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: output raw strings, not JSON texts;
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: read raw strings, not JSON texts;
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: colorize JSON;
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: monochrome (don't colorize JSON);
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: sort keys of objects on output;
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: use tabs for indentation;
  id: tab
  inputBinding:
    prefix: --tab
  type: boolean
- doc: v      set variable $a to value <v>;
  id: arg
  inputBinding:
    prefix: --arg
  type: string
- doc: v  set variable $a to JSON value <v>;
  id: arg_json
  inputBinding:
    prefix: --argjson
  type: string
- doc: f        set variable $a to an array of JSON texts read from <f>;
  id: slurp_file
  inputBinding:
    prefix: --slurpfile
  type: string
