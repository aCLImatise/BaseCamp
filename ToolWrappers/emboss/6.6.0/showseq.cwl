class: CommandLineTool
id: showseq.cwl
inputs:
- id: in_format
  doc: "menu       [2] Display format (Values: 0 (Enter your\nown list of things to\
    \ display); 1 (Sequence\nonly); 2 (Default sequence with features); 3\n(Pretty\
    \ sequence); 4 (One frame\ntranslation); 5 (Three frame translations);\n6 (Six\
    \ frame translations); 7 (Restriction\nenzyme map); 8 (Baroque))"
  type: boolean?
  inputBinding:
    prefix: -format
- id: in_compframe_translation_t
  doc: (CompFrame3 translation); T (Ticks line);
  type: boolean?
  inputBinding:
    prefix: '-3'
- id: in_translate
  doc: "range      [If this is left blank the complete sequence\nis translated.] Regions\
    \ to translate (if\ntranslating).\nIf this is left blank the complete sequence\n\
    is translated.\nA set of regions is specified by a set of\npairs of positions.\n\
    The positions are integers.\nThey are separated by any non-digit,\nnon-alpha character.\n\
    Examples of region specifications are:\n24-45, 56-78\n1:45, 67=99;765..888"
  type: boolean?
  inputBinding:
    prefix: -translate
- id: in_rev_translate
  doc: "range      [If this is left blank the complete reverse\nsequence is translated.]\
    \ Regions to\ntranslate (if translating).\nIf this is left blank the complete\
    \ sequence\nis translated.\nA set of regions is specified by a set of\npairs of\
    \ positions.\nThe positions are integers.\nThey are separated by any non-digit,\n\
    non-alpha character.\nExamples of region specifications are:\n78-56, 45-24,\n\
    888..765, 99=67; 45:1"
  type: boolean?
  inputBinding:
    prefix: -revtranslate
- id: in_uppercase
  doc: "range      [If this is left blank, then the sequence\ncase is left alone.]\
    \ Regions to put in\nuppercase.\nIf this is left blank, then the sequence\ncase\
    \ is left alone.\nA set of regions is specified by a set of\npairs of positions.\n\
    The positions are integers.\nThey are separated by any non-digit,\nnon-alpha character.\n\
    Examples of region specifications are:\n24-45, 56-78\n1:45, 67=99;765..888\n1,5,8,10,23,45,57,99"
  type: boolean?
  inputBinding:
    prefix: -uppercase
- id: in_highlight
  doc: "range      [(full sequence)] Regions to colour if\nformatting for HTML.\n\
    If this is left blank, then the sequence is\nleft alone.\nA set of regions is\
    \ specified by a set of\npairs of positions.\nThe positions are integers.\nThey\
    \ are followed by any valid HTML font\ncolour.\nExamples of region specifications\
    \ are:\n24-45 blue 56-78 orange\n1-100 green 120-156 red\nA file of ranges to\
    \ colour (one range per\nline) can be specified as '@filename'."
  type: boolean?
  inputBinding:
    prefix: -highlight
- id: in_annotation
  doc: "range      [If this is left blank, then no annotation\nis added.] Regions\
    \ to annotate by marking.\nIf this is left blank, then no annotation is\nadded.\n\
    A set of regions is specified by a set of\npairs of positions followed by optional\n\
    text.\nThe positions are integers.\nThey are followed by any text (but not\ndigits\
    \ when on the command-line).\nExamples of region specifications are:\n24-45 new\
    \ domain 56-78 match to Mouse\n1-100 First part 120-156 oligo\nA file of ranges\
    \ to annotate (one range per\nline) can be specified as '@filename'."
  type: boolean?
  inputBinding:
    prefix: -annotation
- id: in_enzymes
  doc: "string     [all] The name 'all' reads in all enzyme\nnames from the REBASE\
    \ database. You can\nspecify enzymes by giving their names with\ncommas between\
    \ then, such as:\n'HincII,hinfI,ppiI,hindiii'.\nThe case of the names is not important.\
    \ You\ncan specify a file of enzyme names to read\nin by giving the name of the\
    \ file holding\nthe enzyme names with a '@' character in\nfront of it, for example,\
    \ '@enz.list'.\nBlank lines and lines starting with a hash\ncharacter or '!' are\
    \ ignored and all other\nlines are concatenated together with a comma\ncharacter\
    \ ',' and then treated as the list\nof enzymes to search for.\nAn example of a\
    \ file of enzyme names is:\n! my enzymes\nHincII, ppiII\n! other enzymes\nhindiii\n\
    HinfI\nPpiI (Any string)"
  type: boolean?
  inputBinding:
    prefix: -enzymes
- id: in_table
  doc: "menu       [0] Genetic code to use (Values: 0\n(Standard); 1 (Standard (with\
    \ alternative\ninitiation codons)); 2 (Vertebrate\nMitochondrial); 3 (Yeast Mitochondrial);\
    \ 4\n(Mold, Protozoan, Coelenterate Mitochondrial\nand Mycoplasma/Spiroplasma);\
    \ 5\n(Invertebrate Mitochondrial); 6 (Ciliate\nMacronuclear and Dasycladacean);\
    \ 9\n(Echinoderm Mitochondrial); 10 (Euplotid\nNuclear); 11 (Bacterial); 12 (Alternative\n\
    Yeast Nuclear); 13 (Ascidian Mitochondrial);\n14 (Flatworm Mitochondrial); 15\n\
    (Blepharisma Macronuclear); 16\n(Chlorophycean Mitochondrial); 21 (Trematode\n\
    Mitochondrial); 22 (Scenedesmus obliquus);\n23 (Thraustochytrium Mitochondrial))"
  type: boolean?
  inputBinding:
    prefix: -table
- id: in_source_match
  doc: "string     [*] By default any feature source in the\nfeature table is shown.\
    \ You can set this to\nmatch any feature source you wish to show.\nThe source\
    \ name is usually either the name\nof the program that detected the feature or\n\
    it is the feature table (eg: EMBL) that the\nfeature came from.\nThe source may\
    \ be wildcarded by using '*'.\nIf you wish to show more than one source,\nseparate\
    \ their names with the character '|',\neg:\ngene* | embl (Any string)"
  type: boolean?
  inputBinding:
    prefix: -sourcematch
- id: in_type_match
  doc: "string     [*] By default any feature type in the\nfeature table is shown.\
    \ You can set this to\nmatch any feature type you wish to show.\nSee http://www.ebi.ac.uk/embl/WebFeat/\
    \ for a\nlist of the EMBL feature types and see\nAppendix A of the Swissprot user\
    \ manual in\nhttp://www.expasy.org/sprot/userman.html for\na list of the Swissprot\
    \ feature types.\nThe type may be wildcarded by using '*'.\nIf you wish to show\
    \ more than one type,\nseparate their names with the character '|',\neg:\n*UTR\
    \ | intron (Any string)"
  type: boolean?
  inputBinding:
    prefix: -typematch
- id: in_sense_match
  doc: "integer    [0 - any sense, 1 - forward sense, -1 -\nreverse sense] By default\
    \ any feature type\nin the feature table is shown. You can set\nthis to match\
    \ any feature sense you wish to\nshow. 0 - any sense, 1 - forward sense, -1 -\n\
    reverse sense (Integer from -1 to 1)"
  type: boolean?
  inputBinding:
    prefix: -sensematch
- id: in_min_score
  doc: "float      [0.0] Minimum score of feature to display\n(see also maxscore)\
    \ (Any numeric value)"
  type: boolean?
  inputBinding:
    prefix: -minscore
- id: in_max_score
  doc: "float      [0.0] Maximum score of feature to display.\nIf both minscore and\
    \ maxscore are zero (the\ndefault), then any score is ignored (Any\nnumeric value)"
  type: boolean?
  inputBinding:
    prefix: -maxscore
- id: in_tag_match
  doc: "string     [*] Tags are the types of extra values that\na feature may have.\
    \ For example in the EMBL\nfeature table, a 'CDS' type of feature may\nhave the\
    \ tags '/codon', '/codon_start',\n'/db_xref', '/EC_number', '/evidence',\n'/exception',\
    \ '/function', '/gene',\n'/label', '/map', '/note', '/number',\n'/partial', '/product',\
    \ '/protein_id',\n'/pseudo', '/standard_name', '/translation',\n'/transl_except',\
    \ '/transl_table', or\n'/usedin'. Some of these tags also have\nvalues, for example\
    \ '/gene' can have the\nvalue of the gene name.\nBy default any feature tag in\
    \ the feature\ntable is shown. You can set this to match\nany feature tag you\
    \ wish to show.\nThe tag may be wildcarded by using '*'.\nIf you wish to show\
    \ more than one tag,\nseparate their names with the character '|',\neg:\ngene\
    \ | label (Any string)"
  type: boolean?
  inputBinding:
    prefix: -tagmatch
- id: in_value_match
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
    \ more than one tag value,\nseparate their names with the character\n'|', eg:\n\
    pax* | 10 (Any string)"
  type: boolean?
  inputBinding:
    prefix: -valuematch
- id: in_strict_tags
  doc: "boolean    [N] By default if any tag/value pair in a\nfeature matches the\
    \ specified tag and value,\nthen all the tags/value pairs of that\nfeature will\
    \ be displayed. If this is set to\nbe true, then only those tag/value pairs in\n\
    a feature that match the specified tag and\nvalue will be displayed."
  type: boolean?
  inputBinding:
    prefix: -stricttags
- id: in_m_file
  doc: "datafile   [Emethylsites.dat] Restriction enzyme\nmethylation data file"
  type: boolean?
  inputBinding:
    prefix: -mfile
- id: in_flat_reformat
  doc: "boolean    [N] This changes the output format to one\nwhere the recognition\
    \ site is indicated by a\nrow of '===' characters and the cut site is\npointed\
    \ to by a '>' character in the\nforward sense, or a '<' in the reverse sense\n\
    strand."
  type: boolean?
  inputBinding:
    prefix: -flatreformat
- id: in_min_cuts
  doc: "integer    [1] This sets the minimum number of cuts for\nany restriction enzyme\
    \ that will be\nconsidered. Any enzymes that cut fewer times\nthan this will be\
    \ ignored. (Integer from 1\nto 1000)"
  type: boolean?
  inputBinding:
    prefix: -mincuts
- id: in_max_cuts
  doc: "integer    [2000000000] This sets the maximum number of\ncuts for any restriction\
    \ enzyme that will\nbe considered. Any enzymes that cut more\ntimes than this\
    \ will be ignored. (Any\ninteger value)"
  type: boolean?
  inputBinding:
    prefix: -maxcuts
- id: in_site_len
  doc: "integer    [4] This sets the minimum length of the\nrestriction enzyme recognition\
    \ site. Any\nenzymes with sites shorter than this will be\nignored. (Integer from\
    \ 2 to 20)"
  type: boolean?
  inputBinding:
    prefix: -sitelen
- id: in_single
  doc: "boolean    [N] If this is set then this forces the\nvalues of the mincuts\
    \ and maxcuts qualifiers\nto both be 1. Any other value you may have\nset them\
    \ to will be ignored."
  type: boolean?
  inputBinding:
    prefix: -single
- id: in_plasmid
  doc: "boolean    [N] If this is set then this allows searches\nfor restriction enzyme\
    \ recognition site and\ncut positions that span the end of the\nsequence to be\
    \ considered."
  type: boolean?
  inputBinding:
    prefix: -plasmid
- id: in_methylation
  doc: "boolean    [N] If this is set then RE recognition sites\nwill not match methylated\
    \ bases."
  type: boolean?
  inputBinding:
    prefix: -methylation
- id: in_three_letter
  doc: "boolean    [N] Display protein sequences in\nthree-letter code"
  type: boolean?
  inputBinding:
    prefix: -threeletter
- id: in_number
  doc: boolean    [N] Number the sequences
  type: boolean?
  inputBinding:
    prefix: -number
- id: in_width
  doc: "integer    [60] Width of sequence to display (Integer 1\nor more)"
  type: boolean?
  inputBinding:
    prefix: -width
- id: in_length
  doc: "integer    [0] Line length of page (0 for indefinite)\n(Integer 0 or more)"
  type: boolean?
  inputBinding:
    prefix: -length
- id: in_margin
  doc: "integer    [10] Margin around sequence for numbering\n(Integer 0 or more)"
  type: boolean?
  inputBinding:
    prefix: -margin
- id: in_offset
  doc: "integer    [1] Offset to start numbering the sequence\nfrom (Any integer value)"
  type: boolean?
  inputBinding:
    prefix: -offset
- id: in_html
  doc: boolean    [N] Use HTML formatting
  type: boolean?
  inputBinding:
    prefix: -html
- id: in_considered_dot
  doc: -[no]ambiguity      boolean    [Y] This allows those enzymes which have one
  type: string
  inputBinding:
    position: 0
- id: in_the_mdot
  doc: -orfminsize         integer    [0] This sets the minimum size of Open
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- showseq
