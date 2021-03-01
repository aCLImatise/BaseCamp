class: CommandLineTool
id: fermi2_correct.cwl
inputs:
- id: in_number_of_threads
  doc: number of threads [1]
  type: long?
  inputBinding:
    prefix: -t
- id: in_kmer_length
  doc: k-mer length [17]
  type: long?
  inputBinding:
    prefix: -k
- id: in_min_occurrence_solid
  doc: min occurrence for a solid k-mer [3]
  type: long?
  inputBinding:
    prefix: -o
- id: in_correct_singletons_int
  doc: correct singletons out of INT bases [17]
  type: long?
  inputBinding:
    prefix: -d
- id: in_get_solid_list
  doc: get solid k-mer list from FILE [null]
  type: File?
  inputBinding:
    prefix: -h
- id: in_protect_qint_bases
  doc: protect Q>INT bases unless they occur once [30]
  type: long?
  inputBinding:
    prefix: -q
- id: in_no_more_corrections
  doc: no more than 4 corrections per INT-bp window [8]
  type: long?
  inputBinding:
    prefix: -w
- id: in_drop_errorprone_reads
  doc: drop error-prone reads
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_print_original_name
  doc: print the original read name
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_index_dot_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reads_dot_fq
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fermi2
- correct
