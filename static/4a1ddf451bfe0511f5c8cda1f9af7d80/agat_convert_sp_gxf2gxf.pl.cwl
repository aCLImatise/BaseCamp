class: CommandLineTool
id: agat_convert_sp_gxf2gxf.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: --gff
- id: in_ct
  doc: "When the features do not have Parent/ID relationships, the\nparser will try\
    \ to group features using a common/shared\nattribute (i.e. a locus tag.). By default\
    \ locus_tag and gene_id.\nYou can replace the default common/shared attributes\
    \ by\nproviding your own(s) using this option. Use comma separated\nlist when\
    \ providing several."
  type: string?
  inputBinding:
    prefix: --ct
- id: in_expose
  doc: "If you want to see, add or modified the feature relationships\nyou will have\
    \ to use this option. It will copy past in you\nworking directory the json files\
    \ used to define the relation\nbetween feature types and their level organisation.\
    \ Typical\nlevel organisation: Level1 => gene; Level2 => mRNA; level3 =>\nexon,cds,utrs\
    \ If you get warning from the Omniscient parser that\na feature relationship is\
    \ not defined, you can provide\ninformation about it within the exposed json files.\
    \ Indeed, if\nthe json files exists in your working directory, they will be\n\
    used by default."
  type: Directory?
  inputBinding:
    prefix: --expose
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
- id: in_verbose_option_modify
  doc: "Verbose option. To modify verbosity. Default is 1. 0 is quiet, 2\nand 3 are\
    \ increasing verbosity."
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_no_check
  doc: "To deacticate all check that can be performed by the parser (e.g\nfixing UTR,\
    \ exon, coordinates etc...)"
  type: string?
  inputBinding:
    prefix: --no_check
- id: in_debug
  doc: debug purpose
  type: string?
  inputBinding:
    prefix: --debug
- id: in_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --output
- id: in_gff_version_input
  doc: "If you don't want to use the autodection of the gff/gft version\nyou give\
    \ as input, you can force the tool to use the parser of\nthe gff version you decide\
    \ to use: 1,2,2.5 or 3. Remind: 2.5 is\nsuposed to be gtf."
  type: double?
  inputBinding:
    prefix: --gff_version_input
- id: in_gff_version_output
  doc: "If you don't want to use the autodection of the gff/gft version\nyou give\
    \ as input, you can force the tool to use the parser of\nthe gff version you decide\
    \ to use: 1,2,2.5 or 3. Remind: 2.5 is\nsuposed to be gtf."
  type: double?
  inputBinding:
    prefix: --gff_version_output
- id: in_agat_convert_sp_gxftwogxfdotpl
  doc: 'Description:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.0--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_convert_sp_gxf2gxf.pl
