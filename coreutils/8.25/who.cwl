#!/usr/bin/env cwl-runner

baseCommand:
- who
class: CommandLineTool
cwlVersion: v1.0
id: who
inputs:
- doc: as -b -d --login -p -r -t -T -u
  id: all
  inputBinding:
    prefix: --all
  type: string
- doc: of last system boot
  id: boot
  inputBinding:
    prefix: --boot
  type: string
- doc: dead processes
  id: dead
  inputBinding:
    prefix: --dead
  type: string
- doc: line of column headings
  id: heading
  inputBinding:
    prefix: --heading
  type: string
- doc: system login processes
  id: login
  inputBinding:
    prefix: --login
  type: string
- doc: to canonicalize hostnames via DNS
  id: lookup
  inputBinding:
    prefix: --lookup
  type: string
- doc: hostname and user associated with stdin
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: active processes spawned by init
  id: process
  inputBinding:
    prefix: --process
  type: string
- doc: login names and number of users logged on
  id: count
  inputBinding:
    prefix: --count
  type: string
- doc: current runlevel
  id: runlevel
  inputBinding:
    prefix: --runlevel
  type: string
- doc: only name, line, and time (default)
  id: short
  inputBinding:
    prefix: --short
  type: string
- doc: last system clock change
  id: time
  inputBinding:
    prefix: --time
  type: string
- doc: user's message status as +, - or ?
  id: mesg
  inputBinding:
    prefix: --mesg
  type: string
- doc: users logged in
  id: users
  inputBinding:
    prefix: --users
  type: string
- doc: as -T
  id: message
  inputBinding:
    prefix: --message
  type: string
- doc: as -T
  id: writable
  inputBinding:
    prefix: --writable
  type: string
