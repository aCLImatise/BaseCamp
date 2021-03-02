class: CommandLineTool
id: bp_unflatten_seq.pl.cwl
inputs:
- id: in_input_fileinput_file
  doc: "|input FILE\ninput file (can also be specified as last argument)"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_from
  doc: "input format (defaults to genbank)\nprobably doesn't make so much sense to\
    \ use this for non-flat\nformats; ie other than embl/genbank"
  type: string?
  inputBinding:
    prefix: -from
- id: in_to
  doc: "output format (defaults to asciitree)\nshould really be a format that is nested\
    \ SeqFeature aware; I think\nthis is only asciitree, chadoxml and gff3"
  type: long?
  inputBinding:
    prefix: -to
- id: in_gff
  doc: "with export to GFF3 format (pre-3 GFFs make no sense with\nunflattened sequences,\
    \ as they have no set way of representing\nfeature graphs)"
  type: boolean?
  inputBinding:
    prefix: -gff
- id: in_output_fileoutfile_defaults
  doc: "|output FILE\noutfile defaults to STDOUT"
  type: File?
  inputBinding:
    prefix: -o
- id: in_detail
  doc: show extra detail on features (asciitree mode only)
  type: boolean?
  inputBinding:
    prefix: -detail
- id: in_ethresh_intsets_threshold
  doc: "|ethresh INT\nsets the error threshold on unflattening\nby default this script\
    \ will throw a wobbly if it encounters weird\nstuff in the genbank file - raise\
    \ the error threshold to signal\nthese to be ignored (and reported on STDERR)"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_no_magic
  doc: "suppress use_magic in unflattening (see\nBio::SeqFeature::Tools::Unflattener"
  type: boolean?
  inputBinding:
    prefix: -nomagic
- id: in_no_typemap
  doc: suppress type mapping (see Bio::SeqFeature::Tools::TypeMapper
  type: boolean?
  inputBinding:
    prefix: -notypemap
- id: in_for_dot
  doc: This is most easily illustrated with the default output format,
  type: string
  inputBinding:
    position: 0
- id: in_ascii_tree
  doc: "An unflattened genbank feature set may look like this (AB077698)\nSeq: AB077698\n\
    databank_entry                                   1..2701[+]\ngene\nmRNA\nCDS hCHCR-G\
    \                                  80..1144[+]\nexon                         \
    \                80..1144[+]\nfive_prime_UTR                                 1..79[+]\n\
    located_sequence_feature                       137..196[+]\nlocated_sequence_feature\
    \                       239..292[+]\nlocated_sequence_feature                \
    \       617..676[+]\nlocated_sequence_feature                       725..778[+]\n\
    three_prime_UTR                                1145..2659[+]\npolyA_site     \
    \                                1606..1606[+]\npolyA_site                   \
    \                  2660..2660[+]"
  type: string
  inputBinding:
    position: 1
- id: in_gene
  doc: "mRNA CG3320-RA                                 \nCDS CG3320-PA           \
    \                     53126..54971[-]\nexon                                  \
    \       52204..53323[-]\nexon                                         53404..53631[-]\n\
    exon                                         53688..53735[-]\nexon           \
    \                              53798..53918[-]\nexon                         \
    \                54949..55287[-]\nmRNA CG3320-RB\nCDS CG3320-PB              \
    \                  53383..54971[-]\nexon                                     \
    \    52204..53631[-]\nexon                                         53688..53735[-]\n\
    exon                                         53798..53918[-]\nexon           \
    \                              54949..55287[-]"
  type: string
  inputBinding:
    position: 0
- id: in_type_mapper
  doc: COMMAND LINE ARGUMENTS
  type: string
  inputBinding:
    position: 0
- id: in_bioperl_lat_bioperl_dot_org
  doc: '- General discussion'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fileoutfile_defaults
  doc: "|output FILE\noutfile defaults to STDOUT"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fileoutfile_defaults)
hints: []
cwlVersion: v1.1
baseCommand:
- bp_unflatten_seq.pl
