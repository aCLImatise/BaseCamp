class: CommandLineTool
id: readseq.cwl
inputs:
- id: in_change_lower_case
  doc: '[aselower]        change to lower case'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_change_upper_case
  doc: '[ASEUPPER]        change to UPPER CASE'
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_ch
  doc: '[ecksum]         calculate & print checksum of sequences'
  type: boolean?
  inputBinding:
    prefix: -ch
- id: in_de_gap
  doc: '[=-]          remove gap symbols'
  type: boolean?
  inputBinding:
    prefix: -degap
- id: in_select_item_numbers
  doc: '[tem=2,3,4]       select Item number(s) from several'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_list_sequences_only
  doc: '[ist]             List sequences only'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_outseq_redirect_output
  doc: '[utput=]out.seq   redirect Output'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_pipe_command_line
  doc: '[ipe]             Pipe (command line, < stdin, > stdout)'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_reversecomplement_input_sequence
  doc: '[everse]          reverse-complement of input sequence'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_use_several_tio
  doc: "[ranslate=]io     translate input symbol [i] to output symbol [o]\nuse several\
    \ -tio to translate several symbols"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in__verbose_progress
  doc: '[erbose]          Verbose progress'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_compare
  doc: Compare two sequence files, reporting differences (flags=nodoc,noid,nolen,nocrc)
  type: long?
  inputBinding:
    prefix: -compare
- id: in_amino
  doc: '[translate]   translate dna to amino acids'
  type: boolean?
  inputBinding:
    prefix: -amino
- id: in_feat
  doc: '[ures]=exon,CDS...   extract sequence of selected features'
  type: boolean?
  inputBinding:
    prefix: -feat
- id: in_no_feat
  doc: '[ures]=repeat_region,intron... remove sequence of selected features'
  type: boolean?
  inputBinding:
    prefix: -nofeat
- id: in_field
  doc: ',ID...      include selected document fields in output'
  type: string?
  inputBinding:
    prefix: -field
- id: in_no_field
  doc: ',... remove selected document fields from output'
  type: string?
  inputBinding:
    prefix: -nofield
- id: in_extract
  doc: '* extract all features, sequence from given base range'
  type: long?
  inputBinding:
    prefix: -extract
- id: in_pair
  doc: '* combine features (fff,gff) and sequence files to one output'
  type: long?
  inputBinding:
    prefix: -pair
- id: in_un_pair
  doc: '* split features,sequence from one input to two files'
  type: long?
  inputBinding:
    prefix: -unpair
- id: in_wid
  doc: '[th]=#            sequence line width'
  type: boolean?
  inputBinding:
    prefix: -wid
- id: in_tab
  doc: =#                left indent
  type: boolean?
  inputBinding:
    prefix: -tab
- id: in_col
  doc: '[space]=#         column space within sequence line on output'
  type: boolean?
  inputBinding:
    prefix: -col
- id: in_gap
  doc: '[count]           count gap chars in sequence numbers'
  type: boolean?
  inputBinding:
    prefix: -gap
- id: in_name_right
  doc: '[=#]   name on left/right side [=max width]'
  type: boolean?
  inputBinding:
    prefix: -nameright
- id: in_name_top
  doc: name at top/bottom
  type: boolean?
  inputBinding:
    prefix: -nametop
- id: in_num_right
  doc: seq index on left/right side
  type: boolean?
  inputBinding:
    prefix: -numright
- id: in_num_top
  doc: index on top/bottom
  type: boolean?
  inputBinding:
    prefix: -numtop
- id: in_match
  doc: '[=.]            use match base for 2..n species'
  type: boolean?
  inputBinding:
    prefix: -match
- id: in_inter
  doc: '[line=#]        blank line(s) between sequence blocks'
  type: boolean?
  inputBinding:
    prefix: -inter
- id: in_options
  doc: -a[ll]              select All sequences
  type: string
  inputBinding:
    position: 0
- id: in_var_31
  doc: "Name             Read  Write  Int'leaf  Features  Sequence  Suffix  Content-type\n\
    1  IG|Stanford      yes    yes        --        --       yes   .ig     biosequence/ig\n\
    2  GenBank|gb       yes    yes        --       yes       yes   .gb     biosequence/genbank\n\
    3  NBRF             yes    yes        --        --       yes   .nbrf   biosequence/nbrf\n\
    4  EMBL|em          yes    yes        --       yes       yes   .embl   biosequence/embl\n\
    5  GCG              yes    yes        --        --       yes   .gcg    biosequence/gcg\n\
    6  DNAStrider       yes    yes        --        --       yes   .strider  biosequence/strider\n\
    7  Fitch             --     --        --        --       yes   .fitch  biosequence/fitch\n\
    8  Pearson|Fasta|fa   yes    yes        --        --       yes   .fasta  biosequence/fasta\n\
    9  Zuker             --     --        --        --       yes   .zuker  biosequence/zuker"
  type: string
  inputBinding:
    position: 0
- id: in_var_32
  doc: Olsen             --     --       yes        --       yes   .olsen  biosequence/olsen
  type: long
  inputBinding:
    position: 1
- id: in_var_33
  doc: Phylip3.2        yes    yes       yes        --       yes   .phylip2  biosequence/phylip2
  type: long
  inputBinding:
    position: 2
- id: in_var_34
  doc: Phylip|Phylip4   yes    yes       yes        --       yes   .phylip  biosequence/phylip
  type: long
  inputBinding:
    position: 3
- id: in_var_35
  doc: Plain|Raw        yes    yes        --        --       yes   .seq    biosequence/plain
  type: long
  inputBinding:
    position: 4
- id: in_var_36
  doc: PIR|CODATA       yes    yes        --        --       yes   .pir    biosequence/codata
  type: long
  inputBinding:
    position: 5
- id: in_var_37
  doc: MSF              yes    yes       yes        --       yes   .msf    biosequence/msf
  type: long
  inputBinding:
    position: 6
- id: in_var_38
  doc: ASN.1             --     --        --        --       yes   .asn    biosequence/asn1
  type: long
  inputBinding:
    position: 7
- id: in_var_39
  doc: PAUP|NEXUS       yes    yes       yes        --       yes   .nexus  biosequence/nexus
  type: long
  inputBinding:
    position: 8
- id: in_var_40
  doc: Pretty            --    yes       yes        --       yes   .pretty  biosequence/pretty
  type: long
  inputBinding:
    position: 9
- id: in_var_41
  doc: XML              yes    yes        --       yes       yes   .xml    biosequence/xml
  type: long
  inputBinding:
    position: 10
- id: in_var_42
  doc: BLAST            yes     --       yes        --       yes   .blast  biosequence/blast
  type: long
  inputBinding:
    position: 11
- id: in_var_43
  doc: SCF              yes     --        --        --       yes   .scf    biosequence/scf
  type: long
  inputBinding:
    position: 12
- id: in_var_44
  doc: Clustal          yes    yes       yes        --       yes   .aln    biosequence/clustal
  type: long
  inputBinding:
    position: 13
- id: in_var_45
  doc: FlatFeat|FFF     yes    yes        --       yes        --   .fff    biosequence/fff
  type: long
  inputBinding:
    position: 14
- id: in_var_46
  doc: GFF              yes    yes        --       yes        --   .gff    biosequence/gff
  type: long
  inputBinding:
    position: 15
- id: in_acedb__parsedreadseq
  doc: "ACEDB            yes    yes        --        --       yes   .ace    biosequence/acedb\n\
    (Int'leaf = interleaved format; Features = documentation/features are parsed)\n\
    Readseq version 2.1.30 (12-May-2010)\nRead & reformat biosequences, Java command-line\
    \ version\nUsage: java -cp readseq.jar run [options] input-file(s)\nFor more details:\
    \ java -cp readseq.jar help more\nOptions\n-a[ll]              select All sequences\n\
    -c[aselower]        change to lower case\n-C[ASEUPPER]        change to UPPER\
    \ CASE\n-ch[ecksum]         calculate & print checksum of sequences\n-degap[=-]\
    \          remove gap symbols\n-f[ormat=]#         Format number for output, \
    \ or\n-f[ormat=]Name      Format name for output\nsee Formats   list below for\
    \ names and numbers\n-inform[at]=#       input format number,  or\n-inform[at]=Name\
    \    input format name.  Assume input data is this format\n-i[tem=2,3,4]     \
    \  select Item number(s) from several\n-l[ist]             List sequences only\n\
    -o[utput=]out.seq   redirect Output\n-p[ipe]             Pipe (command line, <\
    \ stdin, > stdout)\n-r[everse]          reverse-complement of input sequence\n\
    -t[ranslate=]io     translate input symbol [i] to output symbol [o]\nuse several\
    \ -tio to translate several symbols\n-v[erbose]          Verbose progress\n-compare=1\
    \          Compare two sequence files, reporting differences (flags=nodoc,noid,nolen,nocrc)\n\
    -amino[translate]   translate dna to amino acids\nDocumentation and Feature Table\
    \ extraction:\n-feat[ures]=exon,CDS...   extract sequence of selected features\n\
    -nofeat[ures]=repeat_region,intron... remove sequence of selected features\n-field=AC,ID...\
    \      include selected document fields in output\n-nofield=COMMENT,... remove\
    \ selected document fields from output\n-extract=1000..9999  * extract all features,\
    \ sequence from given base range\n-subrange=-1000..10  * extract subrange of sequence\
    \ for feature locations\n-subrange=1..end\n-subrange=end-10..end+99\n-pair=1 \
    \             * combine features (fff,gff) and sequence files to one output\n\
    -unpair=1            * split features,sequence from one input to two files\nPretty\
    \ format options:\n-wid[th]=#            sequence line width\n-tab=#         \
    \       left indent\n-col[space]=#         column space within sequence line on\
    \ output\n-gap[count]           count gap chars in sequence numbers\n-nameleft,\
    \ -nameright[=#]   name on left/right side [=max width]\n-nametop            \
    \  name at top/bottom\n-numleft, -numright   seq index on left/right side\n-numtop,\
    \ -numbot      index on top/bottom\n-match[=.]            use match base for 2..n\
    \ species\n-inter[line=#]        blank line(s) between sequence blocks"
  type: long
  inputBinding:
    position: 16
- id: in_var_48
  doc: "Name             Read  Write  Int'leaf  Features  Sequence  Suffix  Content-type\n\
    1  IG|Stanford      yes    yes        --        --       yes   .ig     biosequence/ig\n\
    2  GenBank|gb       yes    yes        --       yes       yes   .gb     biosequence/genbank\n\
    3  NBRF             yes    yes        --        --       yes   .nbrf   biosequence/nbrf\n\
    4  EMBL|em          yes    yes        --       yes       yes   .embl   biosequence/embl\n\
    5  GCG              yes    yes        --        --       yes   .gcg    biosequence/gcg\n\
    6  DNAStrider       yes    yes        --        --       yes   .strider  biosequence/strider\n\
    7  Fitch             --     --        --        --       yes   .fitch  biosequence/fitch\n\
    8  Pearson|Fasta|fa   yes    yes        --        --       yes   .fasta  biosequence/fasta\n\
    9  Zuker             --     --        --        --       yes   .zuker  biosequence/zuker"
  type: string
  inputBinding:
    position: 0
- id: in_var_49
  doc: Olsen             --     --       yes        --       yes   .olsen  biosequence/olsen
  type: long
  inputBinding:
    position: 1
- id: in_var_50
  doc: Phylip3.2        yes    yes       yes        --       yes   .phylip2  biosequence/phylip2
  type: long
  inputBinding:
    position: 2
- id: in_var_51
  doc: Phylip|Phylip4   yes    yes       yes        --       yes   .phylip  biosequence/phylip
  type: long
  inputBinding:
    position: 3
- id: in_var_52
  doc: Plain|Raw        yes    yes        --        --       yes   .seq    biosequence/plain
  type: long
  inputBinding:
    position: 4
- id: in_var_53
  doc: PIR|CODATA       yes    yes        --        --       yes   .pir    biosequence/codata
  type: long
  inputBinding:
    position: 5
- id: in_var_54
  doc: MSF              yes    yes       yes        --       yes   .msf    biosequence/msf
  type: long
  inputBinding:
    position: 6
- id: in_var_55
  doc: ASN.1             --     --        --        --       yes   .asn    biosequence/asn1
  type: long
  inputBinding:
    position: 7
- id: in_var_56
  doc: PAUP|NEXUS       yes    yes       yes        --       yes   .nexus  biosequence/nexus
  type: long
  inputBinding:
    position: 8
- id: in_var_57
  doc: Pretty            --    yes       yes        --       yes   .pretty  biosequence/pretty
  type: long
  inputBinding:
    position: 9
- id: in_var_58
  doc: XML              yes    yes        --       yes       yes   .xml    biosequence/xml
  type: long
  inputBinding:
    position: 10
- id: in_var_59
  doc: BLAST            yes     --       yes        --       yes   .blast  biosequence/blast
  type: long
  inputBinding:
    position: 11
- id: in_var_60
  doc: SCF              yes     --        --        --       yes   .scf    biosequence/scf
  type: long
  inputBinding:
    position: 12
- id: in_var_61
  doc: Clustal          yes    yes       yes        --       yes   .aln    biosequence/clustal
  type: long
  inputBinding:
    position: 13
- id: in_var_62
  doc: FlatFeat|FFF     yes    yes        --       yes        --   .fff    biosequence/fff
  type: long
  inputBinding:
    position: 14
- id: in_var_63
  doc: GFF              yes    yes        --       yes        --   .gff    biosequence/gff
  type: long
  inputBinding:
    position: 15
- id: in_features_documentationfeatures_parsed
  doc: "ACEDB            yes    yes        --        --       yes   .ace    biosequence/acedb\n\
    (Int'leaf = interleaved format; Features = documentation/features are parsed)\n"
  type: long
  inputBinding:
    position: 16
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- readseq
