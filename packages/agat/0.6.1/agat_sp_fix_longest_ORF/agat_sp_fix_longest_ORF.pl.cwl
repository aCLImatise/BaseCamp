class: CommandLineTool
id: agat_sp_fix_longest_ORF.pl.cwl
inputs:
- id: in_model
  doc: "Kind of ORF Model you want to fix. By default all are used. To\nselect specific\
    \ models writte e.g --model 1,4\nModel1 = The original ORF is part of the new\
    \ ORF; the new ORF is\nlonger\nModel2 = The original ORF and the new one are different;\
    \ the new\none is longer, they do not overlap each other.\nModel3 = The original\
    \ ORF and the new one are different; the new\none is longer, they overlap each\
    \ other.\nModel4 = The new ORF is shorter due to the presence of stop\ncodon in\
    \ the original ORF.\nModel5 = The new ORF is shorter but the original ORF has\
    \ not\npremature stop codon. The shorter predicted ORF can be due to\nthe fact\
    \ that the original ORF does not start by a start codon,\nwhile we force here\
    \ the prediction to have a start codon. A ORF\nwihtout start can be the fact of\
    \ an incomplete or fragmented\nORF: annotation tool didn't predict the start because:\
    \ * the\nstart region is NNNN * the start region is XXXX * correct\nnucleotides\
    \ but prediction tool did not annotate this part (e.g\nincomplete evidence in\
    \ evidence-based prediction)\nModel6 = The ORF is same size but not correct frame\
    \ (+1 or +2 bp\ngives a frame shift)."
  type: long?
  inputBinding:
    prefix: --model
- id: in_gff
  doc: Input GTF/GFF file.
  type: boolean?
  inputBinding:
    prefix: --gff
- id: in_fast_a
  doc: Imput fasta file.
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_codon
  doc: Codon table to use. [default 1]
  type: long?
  inputBinding:
    prefix: --codon
- id: in_split
  doc: "This option is usefull for Model2. Indeed when the prediction is\nnon overlapping\
    \ the original cds, it is possible to split the\ngene into two different genes.\
    \ By default we don't split it. We\nkeep the longest. If you want to split it\
    \ type: -s"
  type: long?
  inputBinding:
    prefix: --split
- id: in_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_verbose_mode_default
  doc: verbose mode. Default off. -v 1 minimum verbosity, -v 3 maximum
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_agat_sp_fix_longest_or_fdot_pl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
- id: in_verbosity
  doc: -h or --help
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0
cwlVersion: v1.1
baseCommand:
- agat_sp_fix_longest_ORF.pl
