#!/usr/bin/env cwl-runner

baseCommand:
- mapsembler2_extremities
class: CommandLineTool
cwlVersion: v1.0
id: mapsembler2_extremities
inputs:
- doc: "(1 arg) :    kmer size that will be used for mapsembler2  [default '']"
  id: k
  inputBinding:
    prefix: --k
  type: boolean
- doc: "(1 arg) :    starters fasta file  [default '']"
  id: starters
  inputBinding:
    prefix: --starters
  type: boolean
- doc: "(1 arg) :    reads dataset file name. Several reads sets can be provided,\
    \ surrounded by \"'s and separated by a space (e.g. --reads \"reads1.fa reads2.fa\"\
    )  [default '']"
  id: reads
  inputBinding:
    prefix: --reads
  type: boolean
- doc: "(1 arg) :    output substarters file name  [default '']"
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: "(1 arg) :    minimim abundance to keep a subkmer  [default '3']"
  id: min_solid_sub_km_er
  inputBinding:
    prefix: --min-solid-subkmer
  type: boolean
- doc: '(0 arg) :    debugging'
  id: debug
  inputBinding:
    prefix: -debug
  type: boolean
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
