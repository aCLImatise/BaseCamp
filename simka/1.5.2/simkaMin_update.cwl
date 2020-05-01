#!/usr/bin/env cwl-runner

baseCommand:
- simkaMin_update.py
class: CommandLineTool
cwlVersion: v1.0
id: simkamin_update.py
inputs:
- doc: '(1 arg) :    input file of datasets (datasets to add to existing simka results'
  id: in
  inputBinding:
    prefix: -in
  type: boolean
- doc: '(1 arg) :    path to existing simka results to update (existing results will
    be overwritten)'
  id: in_to_update
  inputBinding:
    prefix: -in-to-update
  type: boolean
- doc: '(1 arg) :    path to simkaMinCore program (to be specified if not in PATH,
    or not in standard installation directory <simkaDir>/build/bin/simkaMinCore)'
  id: bin
  inputBinding:
    prefix: -bin
  type: boolean
- doc: '(1 arg) :    number of cores [Default: 0]'
  id: nb_cores
  inputBinding:
    prefix: -nb-cores
  type: boolean
- doc: '(1 arg) :    max memory (MB) [Default: 8000]'
  id: max_memory
  inputBinding:
    prefix: -max-memory
  type: boolean
- doc: '(0 arg) :    filter out k-mer seen one time (potentially erroneous)'
  id: filter
  inputBinding:
    prefix: -filter
  type: boolean
- doc: '(1 arg) :    maximum number of reads per sample to process [Default: 0]'
  id: max_reads
  inputBinding:
    prefix: -max-reads
  type: boolean
- doc: '(1 arg) :    minimal size a read should have to be kept [Default: 0]'
  id: min_read_size
  inputBinding:
    prefix: -min-read-size
  type: boolean
- doc: '(1 arg) :    minimal Shannon index a read should have to be kept. Float in
    [0,2] [Default: 0]'
  id: min_shannon_index
  inputBinding:
    prefix: -min-shannon-index
  type: boolean
