class: CommandLineTool
id: Commet.py.cwl
inputs:
- id: input_file
  doc: 'input file of files (a line=a set composed by: "set_name:read_file;read_file;read_file...")'
  type: string
  inputBinding:
    position: 0
- id: sge
  doc: indicates the usage of SGE cluster commands
  type: boolean
  inputBinding:
    prefix: --sge
- id: one_vs_all
  doc: With this option the first set is then called "first" and is compared to all
    others. However, the other sets are not compared to each others. In this case,
    commet outputs the reads from first set in all others and vice versa, and it outputs
    two "vector" files instead of three matrice files. File called vector_plain.csv
    (resp vector_percentage) contains for each read set i, the number (resp. percentage)
    of reads from "first" in i "/" the number (resp. percentage) of reads from i in
    ref.
  type: boolean
  inputBinding:
    prefix: --one_vs_all
- id: b
  doc: ', --binaries_directory '
  type: boolean
  inputBinding:
    prefix: -b
- id: o
  doc: ', --output_directory  directory in which results will be output [default:
    "output_commet"]'
  type: boolean
  inputBinding:
    prefix: -o
- id: k
  doc: 'kmer size [default: 33]'
  type: string
  inputBinding:
    prefix: -k
- id: t
  doc: 'Minimal number of shared k-mers [default: 2]'
  type: string
  inputBinding:
    prefix: -t
- id: l
  doc: minimal length a read should have to be kept [default=k*t]
  type: string
  inputBinding:
    prefix: -l
- id: n
  doc: maximal number of Ns a read should contain to be kept. [default=any]
  type: string
  inputBinding:
    prefix: -n
- id: e
  doc: minimal Shannon index a read should have to be kept. Float in [0,2]. [default=0]
  type: string
  inputBinding:
    prefix: -e
- id: m
  doc: maximum number of selected reads - This applies to a full set of reads. If
    a line of input_file is composed by 3 read files, and m=600, then the first 200
    reads from each read file will be treated. [default=all]
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- Commet.py
