class: CommandLineTool
id: extractfeat.cwl
inputs:
- id: in_before
  doc: "integer    [0] If this value is greater than 0 then\nthat number of bases\
    \ or residues before the\nfeature are included in the extracted\nsequence. This\
    \ allows you to get the context\nof the feature. If this value is negative\nthen\
    \ the start of the extracted sequence\nwill be this number of bases/residues before\n\
    the end of the feature. So a value of '10'\nwill start the extraction 10 bases/residues\n\
    before the start of the sequence, and a\nvalue of '-10' will start the extraction\
    \ 10\nbases/residues before the end of the\nfeature. The output sequence will\
    \ be padded\nwith 'N' or 'X' characters if the sequence\nstarts after the required\
    \ start of the\nextraction. (Any integer value)"
  type: boolean
  inputBinding:
    prefix: -before
- id: in_after
  doc: "integer    [0] If this value is greater than 0 then\nthat number of bases\
    \ or residues after the\nfeature are included in the extracted\nsequence. This\
    \ allows you to get the context\nof the feature. If this value is negative\nthen\
    \ the end of the extracted sequence will\nbe this number of bases/residues after\
    \ the\nstart of the feature. So a value of '10'\nwill end the extraction 10 bases/residues\n\
    after the end of the sequence, and a value\nof '-10' will end the extraction 10\n\
    bases/residues after the start of the\nfeature. The output sequence will be padded\n\
    with 'N' or 'X' characters if the sequence\nends before the required end of the\n\
    extraction. (Any integer value)"
  type: boolean
  inputBinding:
    prefix: -after
- id: in_source
  doc: "string     [*] By default any feature source in the\nfeature table is shown.\
    \ You can set this to\nmatch any feature source you wish to show.\nThe source\
    \ name is usually either the name\nof the program that detected the feature or\n\
    it is the feature table (eg: EMBL) that the\nfeature came from.\nThe source may\
    \ be wildcarded by using '*'.\nIf you wish to show more than one source,\nseparate\
    \ their names with the character '|',\neg:\ngene* | embl (Any string)"
  type: boolean
  inputBinding:
    prefix: -source
- id: in_type
  doc: "string     [*] By default every feature in the feature\ntable is extracted.\
    \ You can set this to be\nany feature type you wish to extract.\nSee http://www.ebi.ac.uk/embl/WebFeat/\
    \ for a\nlist of the EMBL feature types and see the\nUniprot user manual in\n\
    http://www.uniprot.org/manual/sequence_annotation\nfor a list of the Uniprot feature\
    \ types.\nThe type may be wildcarded by using '*'.\nIf you wish to extract more\
    \ than one type,\nseparate their names with the character '|',\neg:\n*UTR | intron\
    \ (Any string)"
  type: boolean
  inputBinding:
    prefix: -type
- id: in_sense
  doc: "integer    [0 - any sense, 1 - forward sense, -1 -\nreverse sense] By default\
    \ any feature type\nin the feature table is extracted. You can\nset this to match\
    \ any feature sense you\nwish. 0 - any sense, 1 - forward sense, -1 -\nreverse\
    \ sense (Any integer value)"
  type: boolean
  inputBinding:
    prefix: -sense
- id: in_min_score
  doc: "float      [0.0] Minimum score of feature to extract\n(see also maxscore)\
    \ (Any numeric value)"
  type: boolean
  inputBinding:
    prefix: -minscore
- id: in_max_score
  doc: "float      [0.0] Maximum score of feature to extract.\nIf both minscore and\
    \ maxscore are zero (the\ndefault), then any score is ignored (Any\nnumeric value)"
  type: boolean
  inputBinding:
    prefix: -maxscore
- id: in_tag
  doc: "string     [*] Tags are the types of extra values that\na feature may have.\
    \ For example in the EMBL\nfeature table, a 'CDS' type of feature may\nhave the\
    \ tags '/codon', '/codon_start',\n'/db_xref', '/EC_number', '/evidence',\n'/exception',\
    \ '/function', '/gene',\n'/label', '/map', '/note', '/number',\n'/partial', '/product',\
    \ '/protein_id',\n'/pseudo', '/standard_name', '/translation',\n'/transl_except',\
    \ '/transl_table', or\n'/usedin'. Some of these tags also have\nvalues, for example\
    \ '/gene' can have the\nvalue of the gene name.\nBy default any feature tag in\
    \ the feature\ntable is extracted. You can set this to\nmatch any feature tag\
    \ you wish to show.\nThe tag may be wildcarded by using '*'.\nIf you wish to extract\
    \ more than one tag,\nseparate their names with the character '|',\neg:\ngene\
    \ | label (Any string)"
  type: boolean
  inputBinding:
    prefix: -tag
- id: in_value
  doc: "string     [*] Tag values are the values associated\nwith a feature tag. Tags\
    \ are the types of\nextra values that a feature may have. For\nexample in the\
    \ EMBL feature table, a 'CDS'\ntype of feature may have the tags '/codon',\n'/codon_start',\
    \ '/db_xref', '/EC_number',\n'/evidence', '/exception', '/function',\n'/gene',\
    \ '/label', '/map', '/note',\n'/number', '/partial', '/product',\n'/protein_id',\
    \ '/pseudo', '/standard_name',\n'/translation', '/transl_except',\n'/transl_table',\
    \ or '/usedin'. Only some of\nthese tags can have values, for example\n'/gene'\
    \ can have the value of the gene name.\nBy default any feature tag value in the\n\
    feature table is shown. You can set this to\nmatch any feature tag value you wish\
    \ to\nshow.\nThe tag value may be wildcarded by using\n'*'.\nIf you wish to show\
    \ more than one tag value,\nseparate their names with a space or the\ncharacter\
    \ '|', eg:\npax* | 10 (Any string)"
  type: boolean
  inputBinding:
    prefix: -value
- id: in_join
  doc: "boolean    [N] Some features, such as CDS (coding\nsequence) and mRNA are\
    \ composed of introns\nconcatenated together. There may be other\nforms of 'joined'\
    \ sequence, depending on the\nfeature table. If this option is set TRUE,\nthen\
    \ any group of these features will be\noutput as a single sequence. If the 'before'\n\
    and 'after' qualifiers have been set, then\nonly the sequence before the first\
    \ feature\nand after the last feature are added."
  type: boolean
  inputBinding:
    prefix: -join
- id: in_feat_in_name
  doc: "boolean    [N] To aid you in identifying the type of\nfeature that has been\
    \ output, the type of\nfeature is added to the start of the\ndescription of the\
    \ output sequence.\nSometimes the description of a sequence is\nlost in subsequent\
    \ processing of the\nsequences file, so it is useful for the type\nto be a part\
    \ of the sequence ID name. If\nyou set this to be TRUE then the name is\nadded\
    \ to the ID name of the output sequence."
  type: boolean
  inputBinding:
    prefix: -featinname
- id: in_describe
  doc: "string     To aid you in identifying some further\nproperties of a feature\
    \ that has been\noutput, this lets you specify one or more\ntag names that should\
    \ be added to the output\nsequence Description text, together with\ntheir values\
    \ (if any). For example, if this\nis set to be 'gene', then if any output\nfeature\
    \ has the tag (for example)\n'/gene=BRCA1' associated with it, then the\ntext\
    \ '(gene=BRCA1)' will be added to the\nDescription line. Tags are the types of\n\
    extra values that a feature may have. For\nexample in the EMBL feature table,\
    \ a 'CDS'\ntype of feature may have the tags '/codon',\n'/codon_start', '/db_xref',\
    \ '/EC_number',\n'/evidence', '/exception', '/function',\n'/gene', '/label', '/map',\
    \ '/note',\n'/number', '/partial', '/product',\n'/protein_id', '/pseudo', '/standard_name',\n\
    '/translation', '/transl_except',\n'/transl_table', or '/usedin'. Some of these\n\
    tags also have values, for example '/gene'\ncan have the value of the gene name.\n\
    By default no feature tag is displayed. You\ncan set this to match any feature\
    \ tag you\nwish to show.\nThe tag may be wildcarded by using '*'.\nIf you wish\
    \ to extract more than one tag,\nseparate their names with the character '|',\n\
    eg:\ngene | label (Any string)"
  type: boolean
  inputBinding:
    prefix: -describe
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- extractfeat
