version 1.0

task Readseq {
  input {
    Boolean? change_lower_case
    Boolean? change_upper_case
    Boolean? ch
    Boolean? de_gap
    Boolean? select_item_numbers
    Boolean? list_sequences_only
    Boolean? outseq_redirect_output
    Boolean? pipe_command_line
    Boolean? reversecomplement_input_sequence
    Boolean? use_several_tio
    Boolean? _verbose_progress
    Int? compare
    Boolean? amino
    Boolean? feat
    Boolean? wid
    Boolean? tab
    Boolean? col
    Boolean? gap
    Boolean? name_right
    Boolean? name_top
    Boolean? num_right
    Boolean? num_top
    Boolean? match
    Boolean? inter
    String options
    String var_25
    Int var_26
    Int var_27
    Int var_28
    Int var_29
    Int var_30
    Int var_31
    Int var_32
    Int var_33
    Int var_34
    Int var_35
    Int var_36
    Int var_37
    Int var_38
    Int var_39
    Int var_40
    Int acedb__parsedreadseq
    String var_42
    Int var_43
    Int var_44
    Int var_45
    Int var_46
    Int var_47
    Int var_48
    Int var_49
    Int var_50
    Int var_51
    Int var_52
    Int var_53
    Int var_54
    Int var_55
    Int var_56
    Int var_57
    Int documentationfeatures_parsed_parsed
  }
  command <<<
    readseq \
      ~{options} \
      ~{var_25} \
      ~{var_26} \
      ~{var_27} \
      ~{var_28} \
      ~{var_29} \
      ~{var_30} \
      ~{var_31} \
      ~{var_32} \
      ~{var_33} \
      ~{var_34} \
      ~{var_35} \
      ~{var_36} \
      ~{var_37} \
      ~{var_38} \
      ~{var_39} \
      ~{var_40} \
      ~{acedb__parsedreadseq} \
      ~{var_42} \
      ~{var_43} \
      ~{var_44} \
      ~{var_45} \
      ~{var_46} \
      ~{var_47} \
      ~{var_48} \
      ~{var_49} \
      ~{var_50} \
      ~{var_51} \
      ~{var_52} \
      ~{var_53} \
      ~{var_54} \
      ~{var_55} \
      ~{var_56} \
      ~{var_57} \
      ~{documentationfeatures_parsed_parsed} \
      ~{if (change_lower_case) then "-c" else ""} \
      ~{if (change_upper_case) then "-C" else ""} \
      ~{if (ch) then "-ch" else ""} \
      ~{if (de_gap) then "-degap" else ""} \
      ~{if (select_item_numbers) then "-i" else ""} \
      ~{if (list_sequences_only) then "-l" else ""} \
      ~{if (outseq_redirect_output) then "-o" else ""} \
      ~{if (pipe_command_line) then "-p" else ""} \
      ~{if (reversecomplement_input_sequence) then "-r" else ""} \
      ~{if (use_several_tio) then "-t" else ""} \
      ~{if (_verbose_progress) then "-v" else ""} \
      ~{if defined(compare) then ("-compare " +  '"' + compare + '"') else ""} \
      ~{if (amino) then "-amino" else ""} \
      ~{if (feat) then "-feat" else ""} \
      ~{if (wid) then "-wid" else ""} \
      ~{if (tab) then "-tab" else ""} \
      ~{if (col) then "-col" else ""} \
      ~{if (gap) then "-gap" else ""} \
      ~{if (name_right) then "-nameright" else ""} \
      ~{if (name_top) then "-nametop" else ""} \
      ~{if (num_right) then "-numright" else ""} \
      ~{if (num_top) then "-numtop" else ""} \
      ~{if (match) then "-match" else ""} \
      ~{if (inter) then "-inter" else ""}
  >>>
  parameter_meta {
    change_lower_case: "[aselower]        change to lower case"
    change_upper_case: "[ASEUPPER]        change to UPPER CASE"
    ch: "[ecksum]         calculate & print checksum of sequences"
    de_gap: "[=-]          remove gap symbols"
    select_item_numbers: "[tem=2,3,4]       select Item number(s) from several"
    list_sequences_only: "[ist]             List sequences only"
    outseq_redirect_output: "[utput=]out.seq   redirect Output"
    pipe_command_line: "[ipe]             Pipe (command line, < stdin, > stdout)"
    reversecomplement_input_sequence: "[everse]          reverse-complement of input sequence"
    use_several_tio: "[ranslate=]io     translate input symbol [i] to output symbol [o]\\nuse several -tio to translate several symbols"
    _verbose_progress: "[erbose]          Verbose progress"
    compare: "Compare two sequence files, reporting differences (flags=nodoc,noid,nolen,nocrc)"
    amino: "[translate]   translate dna to amino acids"
    feat: "[ures]=exon,CDS...   extract sequence of selected features\\n-nofeat[ures]=repeat_region,intron... remove sequence of selected features\\n-field=AC,ID...      include selected document fields in output\\n-nofield=COMMENT,... remove selected document fields from output\\n-extract=1000..9999  * extract all features, sequence from given base range\\n-subrange=-1000..10  * extract subrange of sequence for feature locations\\n-subrange=1..end\\n-subrange=end-10..end+99\\n-pair=1              * combine features (fff,gff) and sequence files to one output\\n-unpair=1            * split features,sequence from one input to two files"
    wid: "[th]=#            sequence line width"
    tab: "=#                left indent"
    col: "[space]=#         column space within sequence line on output"
    gap: "[count]           count gap chars in sequence numbers"
    name_right: "[=#]   name on left/right side [=max width]"
    name_top: "name at top/bottom"
    num_right: "seq index on left/right side"
    num_top: "index on top/bottom"
    match: "[=.]            use match base for 2..n species"
    inter: "[line=#]        blank line(s) between sequence blocks"
    options: "-a[ll]              select All sequences"
    var_25: "Name             Read  Write  Int'leaf  Features  Sequence  Suffix  Content-type\\n1  IG|Stanford      yes    yes        --        --       yes   .ig     biosequence/ig\\n2  GenBank|gb       yes    yes        --       yes       yes   .gb     biosequence/genbank\\n3  NBRF             yes    yes        --        --       yes   .nbrf   biosequence/nbrf\\n4  EMBL|em          yes    yes        --       yes       yes   .embl   biosequence/embl\\n5  GCG              yes    yes        --        --       yes   .gcg    biosequence/gcg\\n6  DNAStrider       yes    yes        --        --       yes   .strider  biosequence/strider\\n7  Fitch             --     --        --        --       yes   .fitch  biosequence/fitch\\n8  Pearson|Fasta|fa   yes    yes        --        --       yes   .fasta  biosequence/fasta\\n9  Zuker             --     --        --        --       yes   .zuker  biosequence/zuker"
    var_26: "Olsen             --     --       yes        --       yes   .olsen  biosequence/olsen"
    var_27: "Phylip3.2        yes    yes       yes        --       yes   .phylip2  biosequence/phylip2"
    var_28: "Phylip|Phylip4   yes    yes       yes        --       yes   .phylip  biosequence/phylip"
    var_29: "Plain|Raw        yes    yes        --        --       yes   .seq    biosequence/plain"
    var_30: "PIR|CODATA       yes    yes        --        --       yes   .pir    biosequence/codata"
    var_31: "MSF              yes    yes       yes        --       yes   .msf    biosequence/msf"
    var_32: "ASN.1             --     --        --        --       yes   .asn    biosequence/asn1"
    var_33: "PAUP|NEXUS       yes    yes       yes        --       yes   .nexus  biosequence/nexus"
    var_34: "Pretty            --    yes       yes        --       yes   .pretty  biosequence/pretty"
    var_35: "XML              yes    yes        --       yes       yes   .xml    biosequence/xml"
    var_36: "BLAST            yes     --       yes        --       yes   .blast  biosequence/blast"
    var_37: "SCF              yes     --        --        --       yes   .scf    biosequence/scf"
    var_38: "Clustal          yes    yes       yes        --       yes   .aln    biosequence/clustal"
    var_39: "FlatFeat|FFF     yes    yes        --       yes        --   .fff    biosequence/fff"
    var_40: "GFF              yes    yes        --       yes        --   .gff    biosequence/gff"
    acedb__parsedreadseq: "ACEDB            yes    yes        --        --       yes   .ace    biosequence/acedb\\n(Int'leaf = interleaved format; Features = documentation/features are parsed)\\nReadseq version 2.1.30 (12-May-2010)\\nRead & reformat biosequences, Java command-line version\\nUsage: java -cp readseq.jar run [options] input-file(s)\\nFor more details: java -cp readseq.jar help more\\nOptions\\n-a[ll]              select All sequences\\n-c[aselower]        change to lower case\\n-C[ASEUPPER]        change to UPPER CASE\\n-ch[ecksum]         calculate & print checksum of sequences\\n-degap[=-]          remove gap symbols\\n-f[ormat=]#         Format number for output,  or\\n-f[ormat=]Name      Format name for output\\nsee Formats   list below for names and numbers\\n-inform[at]=#       input format number,  or\\n-inform[at]=Name    input format name.  Assume input data is this format\\n-i[tem=2,3,4]       select Item number(s) from several\\n-l[ist]             List sequences only\\n-o[utput=]out.seq   redirect Output\\n-p[ipe]             Pipe (command line, < stdin, > stdout)\\n-r[everse]          reverse-complement of input sequence\\n-t[ranslate=]io     translate input symbol [i] to output symbol [o]\\nuse several -tio to translate several symbols\\n-v[erbose]          Verbose progress\\n-compare=1          Compare two sequence files, reporting differences (flags=nodoc,noid,nolen,nocrc)\\n-amino[translate]   translate dna to amino acids\\nDocumentation and Feature Table extraction:\\n-feat[ures]=exon,CDS...   extract sequence of selected features\\n-nofeat[ures]=repeat_region,intron... remove sequence of selected features\\n-field=AC,ID...      include selected document fields in output\\n-nofield=COMMENT,... remove selected document fields from output\\n-extract=1000..9999  * extract all features, sequence from given base range\\n-subrange=-1000..10  * extract subrange of sequence for feature locations\\n-subrange=1..end\\n-subrange=end-10..end+99\\n-pair=1              * combine features (fff,gff) and sequence files to one output\\n-unpair=1            * split features,sequence from one input to two files\\nPretty format options:\\n-wid[th]=#            sequence line width\\n-tab=#                left indent\\n-col[space]=#         column space within sequence line on output\\n-gap[count]           count gap chars in sequence numbers\\n-nameleft, -nameright[=#]   name on left/right side [=max width]\\n-nametop              name at top/bottom\\n-numleft, -numright   seq index on left/right side\\n-numtop, -numbot      index on top/bottom\\n-match[=.]            use match base for 2..n species\\n-inter[line=#]        blank line(s) between sequence blocks"
    var_42: "Name             Read  Write  Int'leaf  Features  Sequence  Suffix  Content-type\\n1  IG|Stanford      yes    yes        --        --       yes   .ig     biosequence/ig\\n2  GenBank|gb       yes    yes        --       yes       yes   .gb     biosequence/genbank\\n3  NBRF             yes    yes        --        --       yes   .nbrf   biosequence/nbrf\\n4  EMBL|em          yes    yes        --       yes       yes   .embl   biosequence/embl\\n5  GCG              yes    yes        --        --       yes   .gcg    biosequence/gcg\\n6  DNAStrider       yes    yes        --        --       yes   .strider  biosequence/strider\\n7  Fitch             --     --        --        --       yes   .fitch  biosequence/fitch\\n8  Pearson|Fasta|fa   yes    yes        --        --       yes   .fasta  biosequence/fasta\\n9  Zuker             --     --        --        --       yes   .zuker  biosequence/zuker"
    var_43: "Olsen             --     --       yes        --       yes   .olsen  biosequence/olsen"
    var_44: "Phylip3.2        yes    yes       yes        --       yes   .phylip2  biosequence/phylip2"
    var_45: "Phylip|Phylip4   yes    yes       yes        --       yes   .phylip  biosequence/phylip"
    var_46: "Plain|Raw        yes    yes        --        --       yes   .seq    biosequence/plain"
    var_47: "PIR|CODATA       yes    yes        --        --       yes   .pir    biosequence/codata"
    var_48: "MSF              yes    yes       yes        --       yes   .msf    biosequence/msf"
    var_49: "ASN.1             --     --        --        --       yes   .asn    biosequence/asn1"
    var_50: "PAUP|NEXUS       yes    yes       yes        --       yes   .nexus  biosequence/nexus"
    var_51: "Pretty            --    yes       yes        --       yes   .pretty  biosequence/pretty"
    var_52: "XML              yes    yes        --       yes       yes   .xml    biosequence/xml"
    var_53: "BLAST            yes     --       yes        --       yes   .blast  biosequence/blast"
    var_54: "SCF              yes     --        --        --       yes   .scf    biosequence/scf"
    var_55: "Clustal          yes    yes       yes        --       yes   .aln    biosequence/clustal"
    var_56: "FlatFeat|FFF     yes    yes        --       yes        --   .fff    biosequence/fff"
    var_57: "GFF              yes    yes        --       yes        --   .gff    biosequence/gff"
    documentationfeatures_parsed_parsed: "ACEDB            yes    yes        --        --       yes   .ace    biosequence/acedb\\n(Int'leaf = interleaved format; Features = documentation/features are parsed)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}