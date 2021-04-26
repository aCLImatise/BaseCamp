class: CommandLineTool
id: meryl_lookup.cwl
inputs:
- id: in_sequence
  doc: '[<input2.fasta>] \'
  type: long?
  inputBinding:
    prefix: -sequence
- id: in_output
  doc: <output1>      [<output2>] \
  type: boolean?
  inputBinding:
    prefix: -output
- id: in_bed
  doc: ":\nGenerate a BED format file showing the location of kmers in\nany input\
    \ database on each sequence in 'input1.fasta'."
  type: boolean?
  inputBinding:
    prefix: -bed
- id: in_wig_count
  doc: ":\nGenerate a WIGGLE format file showing the multiplicity of the\nkmer starting\
    \ at each position in the sequence, if it exists in\nan input kmer database."
  type: boolean?
  inputBinding:
    prefix: -wig-count
- id: in_wig_depth
  doc: ":\nGenerate a WIGGLE format file showing the number of kmers in\nany input\
    \ database that cover each position in the sequence."
  type: boolean?
  inputBinding:
    prefix: -wig-depth
- id: in_existence
  doc: ":\nGenerate a tab-delimited line for each input sequence with the\nnumber\
    \ of kmers in the sequence, in the database and common to both."
  type: boolean?
  inputBinding:
    prefix: -existence
- id: in_exclude
  doc: ":\nCopy sequences from 'input1.fasta' (and 'input2.fasta') to the\ncorresponding\
    \ output file if the sequence has at least one kmer\npresent (include) or no kmers\
    \ present (exclude) in 'input1.meryl'."
  type: boolean?
  inputBinding:
    prefix: -exclude
- id: in_report_type
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meryl:1.3--h1b792b2_0
cwlVersion: v1.1
baseCommand:
- meryl-lookup
