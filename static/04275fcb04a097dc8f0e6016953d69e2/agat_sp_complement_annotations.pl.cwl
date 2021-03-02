class: CommandLineTool
id: agat_sp_complement_annotations.pl.cwl
inputs:
- id: in_ref
  doc: Input GTF/GFF file used as reference.
  type: File?
  inputBinding:
    prefix: --ref
- id: in_add
  doc: "Annotation(s) file you would like to use to complement the\nreference annotation.\
    \ You can specify as much file you want like\nso: -a addfile1 -a addfile2 -a addfile3\
    \ /!\\ The order you\nprovide these files matter. Once the reference file has\
    \ been\ncomplemented by file1, this new annotation becomes the new\nreference\
    \ that will be complemented by file2 etc. /!\\ The result\nwith -a addfile1 -a\
    \ addfile2 will differ to the result from -a\naddfile2 -a addfile1. So, be aware\
    \ of what you want if you use\nseveral addfiles."
  type: File?
  inputBinding:
    prefix: --add
- id: in_size_min
  doc: "Option to keep the non-overlping gene only if the CDS size (in\nnucleotide)\
    \ is over the minimum size defined. Default = 0 that\nmeans all of them are kept."
  type: long?
  inputBinding:
    prefix: --size_min
- id: in_outfile
  doc: "Output gff3 containing the reference annotation with all the\nnon-overlapping\
    \ newly added genes from addfiles.gff."
  type: long?
  inputBinding:
    prefix: --outfile
- id: in_agat_sp_complement_annotations_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.5.1--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_complement_annotations.pl
