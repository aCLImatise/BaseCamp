class: CommandLineTool
id: Commet.py.cwl
inputs:
- id: in_sge
  doc: indicates the usage of SGE cluster commands
  type: boolean?
  inputBinding:
    prefix: --sge
- id: in_one_vs_all
  doc: "With this option the first set is then called \"first\"\nand is compared to\
    \ all others. However, the other sets\nare not compared to each others. In this\
    \ case, commet\noutputs the reads from first set in all others and\nvice versa,\
    \ and it outputs two \"vector\" files instead\nof three matrice files. File called\
    \ vector_plain.csv\n(resp vector_percentage) contains for each read set i,\nthe\
    \ number (resp. percentage) of reads from \"first\" in\ni \"/\" the number (resp.\
    \ percentage) of reads from i in\nref."
  type: boolean?
  inputBinding:
    prefix: --one_vs_all
- id: in_binaries_directory
  doc: "directory in which results will be output [default:\n\"output_commet\"]"
  type: Directory?
  inputBinding:
    prefix: --binaries_directory
- id: in_kmer_size
  doc: 'kmer size [default: 33]'
  type: long?
  inputBinding:
    prefix: -k
- id: in_minimal_number_shared
  doc: 'Minimal number of shared k-mers [default: 2]'
  type: long?
  inputBinding:
    prefix: -t
- id: in_minimal_length_read
  doc: "minimal length a read should have to be kept\n[default=k*t]"
  type: long?
  inputBinding:
    prefix: -l
- id: in_maximal_number_read
  doc: "maximal number of Ns a read should contain to be kept.\n[default=any]"
  type: long?
  inputBinding:
    prefix: -n
- id: in_minimal_shannon_index
  doc: "minimal Shannon index a read should have to be kept.\nFloat in [0,2]. [default=0]"
  type: double?
  inputBinding:
    prefix: -e
- id: in_maximum_number_selected
  doc: "maximum number of selected reads - This applies to a\nfull set of reads. If\
    \ a line of input_file is composed\nby 3 read files, and m=600, then the first\
    \ 200 reads\nfrom each read file will be treated. [default=all]\n"
  type: long?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_binaries_directory
  doc: "directory in which results will be output [default:\n\"output_commet\"]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_binaries_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- Commet.py
