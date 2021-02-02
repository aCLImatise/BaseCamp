class: CommandLineTool
id: filterGenemark.pl.cwl
inputs:
- id: in_hints
  doc: "Corresponding hints file in gff format;\nit is vital that this file contains\
    \ intron\nhints; start/stop hints are optional;\ndo not mix start/stop hints with\
    \ --singleCDSfile\n(this might double the number of evidence supported\nsingle\
    \ exon genes)"
  type: long
  inputBinding:
    prefix: --hints
- id: in_genemark
  doc: File in gtf format
  type: File
  inputBinding:
    prefix: --genemark
- id: in_output
  doc: "Specifies output file name. Default are\n'genemark-input_file_name.c.gtf'\n\
    and 'genemark-input_file_name.f.good.gtf'\nand 'genemark-input_file_name.f.bad.gtf'\
    \ for\nevidence anchored genes and genes not anchored by\nevidence (but included\
    \ in the output file), respectively"
  type: File
  inputBinding:
    prefix: --output
- id: in_suppress
  doc: Suppress file output
  type: File
  inputBinding:
    prefix: --suppress
- id: in_filter_out_short
  doc: "Filters intron containing genes as \"bad\" that\nhave an RNA-Seq supported\
    \ intron\nwithin 2*maximal CDS length of the gene with at\nleast 20% of average\
    \ intron\nmultiplicity for that gene (screens also\ndownstream of stop, which\
    \ either indicates\nwrong reading frame, or a downstream UTR)"
  type: boolean
  inputBinding:
    prefix: --filterOutShort
- id: in_single_cds_file
  doc: "file with single exon genes CDSpart hints, they\nare used to filter single\
    \ exon training genes as\n\"good\". If number is not sufficient, unsupported\n\
    genes are still added to \"good genes\" in order\nto generate a good training\
    \ gene set for\nAUGUSTUS"
  type: long
  inputBinding:
    prefix: --singleCDSfile
- id: in_cds_part_cut_off
  doc: "CDSpart cutoff that was used for generating hints\ndefault 15"
  type: long
  inputBinding:
    prefix: --cdspart_cutoff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_suppress
  doc: Suppress file output
  type: File
  outputBinding:
    glob: $(inputs.in_suppress)
cwlVersion: v1.1
baseCommand:
- filterGenemark.pl
