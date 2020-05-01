#!/usr/bin/env cwl-runner

baseCommand:
- simka
class: CommandLineTool
cwlVersion: v1.0
id: simka
inputs:
- doc: '(1 arg) :    input file of samples. One sample per line: id1: filename1...'
  id: in
  inputBinding:
    prefix: -in
  type: boolean
- doc: "(1 arg) :    output directory for result files (distance matrices)  [default\
    \ './simka_results']"
  id: out
  inputBinding:
    prefix: -out
  type: boolean
- doc: '(1 arg) :    output directory for temporary files'
  id: out_tmp
  inputBinding:
    prefix: -out-tmp
  type: boolean
- doc: '(0 arg) :    keep temporary files'
  id: keep_tmp
  inputBinding:
    prefix: -keep-tmp
  type: boolean
- doc: '(0 arg) :    compute (and display) information before running Simka, such
    as the number of reads per dataset'
  id: data_info
  inputBinding:
    prefix: -data-info
  type: boolean
- doc: "(1 arg) :    verbosity level  [default '1']"
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: '(0 arg) :    compute all simple distances (Chord, Hellinger...)'
  id: simple_dist
  inputBinding:
    prefix: -simple-dist
  type: boolean
- doc: '(0 arg) :    compute all complex distances (Jensen-Shannon...)'
  id: complex_dist
  inputBinding:
    prefix: -complex-dist
  type: boolean
- doc: "(1 arg) :    size of a kmer  [default '21']"
  id: km_er_size
  inputBinding:
    prefix: -kmer-size
  type: boolean
- doc: "(1 arg) :    min abundance a kmer need to be considered  [default '2']"
  id: abundance_min
  inputBinding:
    prefix: -abundance-min
  type: boolean
- doc: "(1 arg) :    max abundance a kmer can have to be considered  [default '999999999']"
  id: abundance_max
  inputBinding:
    prefix: -abundance-max
  type: boolean
- doc: "(1 arg) :    minimal Shannon index a kmer should have to be kept. Float in\
    \ [0,2]  [default '0']"
  id: km_er_shannon_index
  inputBinding:
    prefix: -kmer-shannon-index
  type: boolean
- doc: "(1 arg) :    maximum number of reads per sample to process. Can be -1: use\
    \ all reads. Can be 0: estimate it  [default '-1']"
  id: max_reads
  inputBinding:
    prefix: -max-reads
  type: boolean
- doc: "(1 arg) :    minimal size a read should have to be kept  [default '0']"
  id: min_read_size
  inputBinding:
    prefix: -min-read-size
  type: boolean
- doc: "(1 arg) :    minimal Shannon index a read should have to be kept. Float in\
    \ [0,2]  [default '0']"
  id: min_shannon_index
  inputBinding:
    prefix: -min-shannon-index
  type: boolean
- doc: "(1 arg) :    number of cores  [default '0']"
  id: nb_cores
  inputBinding:
    prefix: -nb-cores
  type: boolean
- doc: "(1 arg) :    max memory (MB)  [default '5000']"
  id: max_memory
  inputBinding:
    prefix: -max-memory
  type: boolean
- doc: "(1 arg) :    maximum number of simultaneous counting jobs (a higher value\
    \ improve execution time but increase temporary disk usage)  [default '']"
  id: max_count
  inputBinding:
    prefix: -max-count
  type: boolean
- doc: "(1 arg) :    maximum number of simultaneous merging jobs (1 job = 1 core)\
    \  [default '']"
  id: max_merge
  inputBinding:
    prefix: -max-merge
  type: boolean
- doc: "(1 arg) :    command to submit counting job  [default '']"
  id: count_cmd
  inputBinding:
    prefix: -count-cmd
  type: boolean
- doc: "(1 arg) :    command to submit merging job  [default '']"
  id: merge_cmd
  inputBinding:
    prefix: -merge-cmd
  type: boolean
- doc: "(1 arg) :    filename to the couting job template  [default '']"
  id: count_file
  inputBinding:
    prefix: -count-file
  type: boolean
- doc: "(1 arg) :    filename to the merging job template  [default '']"
  id: merge_file
  inputBinding:
    prefix: -merge-file
  type: boolean
