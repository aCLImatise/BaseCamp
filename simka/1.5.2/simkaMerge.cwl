#!/usr/bin/env cwl-runner

baseCommand:
- simkaMerge
class: CommandLineTool
cwlVersion: v1.0
id: simkamerge
inputs:
- doc: "(1 arg) :    number of cores  [default '0']"
  id: nb_cores
  inputBinding:
    prefix: -nb-cores
  type: boolean
- doc: "(1 arg) :    verbosity level  [default '1']"
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: '(1 arg) :    nb cores'
  id: nb_cores
  inputBinding:
    prefix: -nb-cores
  type: boolean
- doc: '(1 arg) :    kmer size'
  id: km_er_size
  inputBinding:
    prefix: -kmer-size
  type: boolean
- doc: '(1 arg) :    input filename'
  id: in
  inputBinding:
    prefix: -in
  type: boolean
- doc: '(1 arg) :    tmp output'
  id: out_tmp_sim_ka
  inputBinding:
    prefix: -out-tmp-simka
  type: boolean
- doc: '(1 arg) :    bank name'
  id: partition_id
  inputBinding:
    prefix: -partition-id
  type: boolean
- doc: '(1 arg) :    bank name'
  id: nb_cores
  inputBinding:
    prefix: -nb-cores
  type: boolean
- doc: '(1 arg) :    bank name'
  id: max_memory
  inputBinding:
    prefix: -max-memory
  type: boolean
- doc: '(1 arg) :    bank name'
  id: km_er_shannon_index
  inputBinding:
    prefix: -kmer-shannon-index
  type: boolean
- doc: '(0 arg) :    compute simple distances'
  id: simple_dist
  inputBinding:
    prefix: -simple-dist
  type: boolean
- doc: '(0 arg) :    compute complex distances'
  id: complex_dist
  inputBinding:
    prefix: -complex-dist
  type: boolean
