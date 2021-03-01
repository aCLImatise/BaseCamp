class: CommandLineTool
id: simka.cwl
inputs:
- id: in_in
  doc: '(1 arg) :    input file of samples. One sample per line: id1: filename1...'
  type: boolean?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "(1 arg) :    output directory for result files (distance matrices)  [default\
    \ './simka_results']"
  type: Directory?
  inputBinding:
    prefix: -out
- id: in_out_tmp
  doc: '(1 arg) :    output directory for temporary files'
  type: Directory?
  inputBinding:
    prefix: -out-tmp
- id: in_keep_tmp
  doc: '(0 arg) :    keep temporary files'
  type: boolean?
  inputBinding:
    prefix: -keep-tmp
- id: in_data_info
  doc: '(0 arg) :    compute (and display) information before running Simka, such
    as the number of reads per dataset'
  type: boolean?
  inputBinding:
    prefix: -data-info
- id: in_verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_simple_dist
  doc: '(0 arg) :    compute all simple distances (Chord, Hellinger...)'
  type: boolean?
  inputBinding:
    prefix: -simple-dist
- id: in_complex_dist
  doc: '(0 arg) :    compute all complex distances (Jensen-Shannon...)'
  type: boolean?
  inputBinding:
    prefix: -complex-dist
- id: in_km_er_size
  doc: "(1 arg) :    size of a kmer  [default '21']"
  type: boolean?
  inputBinding:
    prefix: -kmer-size
- id: in_abundance_min
  doc: "(1 arg) :    min abundance a kmer need to be considered  [default '2']"
  type: boolean?
  inputBinding:
    prefix: -abundance-min
- id: in_abundance_max
  doc: "(1 arg) :    max abundance a kmer can have to be considered  [default '999999999']"
  type: boolean?
  inputBinding:
    prefix: -abundance-max
- id: in_km_er_shannon_index
  doc: "(1 arg) :    minimal Shannon index a kmer should have to be kept. Float in\
    \ [0,2]  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -kmer-shannon-index
- id: in_max_reads
  doc: "(1 arg) :    maximum number of reads per sample to process. Can be -1: use\
    \ all reads. Can be 0: estimate it  [default '-1']"
  type: boolean?
  inputBinding:
    prefix: -max-reads
- id: in_min_read_size
  doc: "(1 arg) :    minimal size a read should have to be kept  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -min-read-size
- id: in_min_shannon_index
  doc: "(1 arg) :    minimal Shannon index a read should have to be kept. Float in\
    \ [0,2]  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -min-shannon-index
- id: in_nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -nb-cores
- id: in_max_memory
  doc: "(1 arg) :    max memory (MB)  [default '5000']"
  type: boolean?
  inputBinding:
    prefix: -max-memory
- id: in_max_count
  doc: "(1 arg) :    maximum number of simultaneous counting jobs (a higher value\
    \ improve execution time but increase temporary disk usage)  [default '']"
  type: boolean?
  inputBinding:
    prefix: -max-count
- id: in_max_merge
  doc: "(1 arg) :    maximum number of simultaneous merging jobs (1 job = 1 core)\
    \  [default '']"
  type: boolean?
  inputBinding:
    prefix: -max-merge
- id: in_count_cmd
  doc: "(1 arg) :    command to submit counting job  [default '']"
  type: boolean?
  inputBinding:
    prefix: -count-cmd
- id: in_merge_cmd
  doc: "(1 arg) :    command to submit merging job  [default '']"
  type: boolean?
  inputBinding:
    prefix: -merge-cmd
- id: in_count_file
  doc: "(1 arg) :    filename to the couting job template  [default '']"
  type: boolean?
  inputBinding:
    prefix: -count-file
- id: in_merge_file
  doc: "(1 arg) :    filename to the merging job template  [default '']"
  type: boolean?
  inputBinding:
    prefix: -merge-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "(1 arg) :    output directory for result files (distance matrices)  [default\
    \ './simka_results']"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_tmp
  doc: '(1 arg) :    output directory for temporary files'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_tmp)
hints: []
cwlVersion: v1.1
baseCommand:
- simka
