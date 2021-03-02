class: CommandLineTool
id: RAMBOK.py.cwl
inputs:
- id: in_ref_file_one
  doc: "Reference file of species 1 in fasta-format. Should\npair with name1"
  type: long?
  inputBinding:
    prefix: --reffile1
- id: in_ref_file_two
  doc: "Reference file of species 2 in fasta-format. Should\npair with name2"
  type: long?
  inputBinding:
    prefix: --reffile2
- id: in_name_one
  doc: Name of species 1
  type: long?
  inputBinding:
    prefix: --name1
- id: in_name_two
  doc: Name of species 2
  type: long?
  inputBinding:
    prefix: --name2
- id: in_unassigned_one
  doc: Fasta- or fastq-file containing mixed reads.
  type: long?
  inputBinding:
    prefix: --unassigned1
- id: in_unassigned_two
  doc: "Fasta- or fastq-file containing mixed reads, only\nrequired in paired end\
    \ mode."
  type: long?
  inputBinding:
    prefix: --unassigned2
- id: in_km_er_sizes
  doc: "Order of Markov-Chain/kmer length. Enter as range\n(e.g. 4:8) or list (e.g.\
    \ 4,6,8) or integer (e.g. 8).\nDefault = 8"
  type: long?
  inputBinding:
    prefix: --kmersizes
- id: in_out_path
  doc: "Folder to write results to. Default = $name1_$name2/\nin your working directory"
  type: File?
  inputBinding:
    prefix: --outpath
- id: in_amount
  doc: Number of reads to be simulated, default = 50000
  type: long?
  inputBinding:
    prefix: --amount
- id: in_threads
  doc: Number of Threads to use
  type: long?
  inputBinding:
    prefix: --threads
- id: in_chunksize
  doc: "Size of chunks created at a time for simulation,\ndefault = 100000. Only change\
    \ if you know what you are\ndoing!"
  type: long?
  inputBinding:
    prefix: --chunksize
- id: in_gap_size
  doc: "Estimated size of gapsize in case of paired end reads,\ndefault = 1"
  type: long?
  inputBinding:
    prefix: --gapsize
- id: in_cut_off_lower
  doc: "Lower cutoff: Output only reads with a score lower\nthan or equal to this\
    \ value, use m1 for -1"
  type: long?
  inputBinding:
    prefix: --cutoff_lower
- id: in_cut_off_higher
  doc: "Higher cutoff: Output only reads with a score higher\nthan or equal to this\
    \ value, use m1 for -1"
  type: long?
  inputBinding:
    prefix: --cutoff_higher
- id: in_delete_temp
  doc: "\\Delete temporary files. Calculations will start from\nbeginning next time."
  type: boolean?
  inputBinding:
    prefix: --delete_temp
- id: in_file_type
  doc: "Type of your input reads. fasta or fastq, default =\nfastq\n"
  type: File?
  inputBinding:
    prefix: --filetype
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_path
  doc: "Folder to write results to. Default = $name1_$name2/\nin your working directory"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_path)
hints: []
cwlVersion: v1.1
baseCommand:
- RAMBOK.py
