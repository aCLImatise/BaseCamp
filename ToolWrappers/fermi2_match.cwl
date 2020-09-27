class: CommandLineTool
id: fermi2_match.cwl
inputs:
- id: in_find_smems_req
  doc: find SMEMs (req. both strands in one index)
  type: boolean
  inputBinding:
    prefix: -p
- id: in_discovery_novel_alleles
  doc: discovery novel alleles (force -p)
  type: boolean
  inputBinding:
    prefix: -d
- id: in_kmer_length_discovery
  doc: k-mer length in the discovery mode (force -d) [61]
  type: long
  inputBinding:
    prefix: -k
- id: in_number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: in_batch_size
  doc: batch size [10000000]
  type: long
  inputBinding:
    prefix: -b
- id: in_sampled_suffix_array
  doc: sampled suffix array [null]
  type: File
  inputBinding:
    prefix: -s
- id: in_show_coordinate_number
  doc: show coordinate if the number of hits is no more than INT [10]
  type: long
  inputBinding:
    prefix: -m
- id: in_sq
  doc: seqName  seqLen
  type: string
  inputBinding:
    position: 0
- id: in_em
  doc: start  end  occurrence [positions]
  type: string
  inputBinding:
    position: 1
- id: in_ns
  doc: start  leftLen  diffLen  rightLen  leftOcc  rightOcc  strand  seq  qual
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fermi2
- match
