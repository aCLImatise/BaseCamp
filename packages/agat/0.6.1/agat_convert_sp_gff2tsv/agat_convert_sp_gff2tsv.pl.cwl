class: CommandLineTool
id: agat_convert_sp_gff2tsv.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: --gff
- id: in_ct
  doc: "When the features doesn't have Parent/ID relationships, the\nparser will try\
    \ to group features using a common/shared\nattribute (i.e. a locus tag.). By default\
    \ locus_tag and gene_id.\nYou can provide another specific common/shared attribute\
    \ using\nthis option."
  type: string?
  inputBinding:
    prefix: --ct
- id: in_merge_loci
  doc: "Merge loci parameter, default deactivated. You turn on the\nparameter if you\
    \ want to merge loci into one locus when they\noverlap. (at CDS level for mRNA,\
    \ at exon level for other level2\nfeatures. Strand has to be the same). Prokaryote\
    \ can have\noverlaping loci so it should not use it for prokaryote\nannotation.\
    \ In eukaryote, loci rarely overlap. Overlaps could be\ndue to error in the file,\
    \ mRNA can be merged under the same\nparent gene if you acticate the option."
  type: File?
  inputBinding:
    prefix: --merge_loci
- id: in_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_agat_convert_sp_gfftwotsvdotpl
  doc: 'Description:'
  type: long
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
- agat_convert_sp_gff2tsv.pl
