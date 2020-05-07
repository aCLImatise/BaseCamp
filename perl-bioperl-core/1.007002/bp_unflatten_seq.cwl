class: CommandLineTool
id: bp_unflatten_seq.pl.cwl
inputs:
- id: databank_entry
  doc: 1..2701[+]
  type: string
  inputBinding:
    position: 0
- id: gene
  doc: mRNA                                            CDS hCHCR-G                                  80..1144[+]
    exon                                         80..1144[+] five_prime_UTR                                 1..79[+]
    located_sequence_feature                       137..196[+] located_sequence_feature                       239..292[+]
    located_sequence_feature                       617..676[+] located_sequence_feature                       725..778[+]
    three_prime_UTR                                1145..2659[+] polyA_site                                     1606..1606[+]
    polyA_site                                     2660..2660[+]
  type: string
  inputBinding:
    position: 1
- id: gene
  doc: mRNA CG3320-RA                                  CDS CG3320-PA                                53126..54971[-]
    exon                                         52204..53323[-] exon                                         53404..53631[-]
    exon                                         53688..53735[-] exon                                         53798..53918[-]
    exon                                         54949..55287[-] mRNA CG3320-RB                                  CDS
    CG3320-PB                                53383..54971[-] exon                                         52204..53631[-]
    exon                                         53688..53735[-] exon                                         53798..53918[-]
    exon                                         54949..55287[-]
  type: string
  inputBinding:
    position: 0
- id: i
  doc: '|input FILE input file (can also be specified as last argument)'
  type: boolean
  inputBinding:
    prefix: -i
- id: from
  doc: input format (defaults to genbank) probably doesn't make so much sense to use
    this for non-flat formats; ie other than embl/genbank
  type: string
  inputBinding:
    prefix: -from
- id: to
  doc: output format (defaults to asciitree) should really be a format that is nested
    SeqFeature aware; I think this is only asciitree, chadoxml and gff3
  type: string
  inputBinding:
    prefix: -to
- id: gff
  doc: with export to GFF3 format (pre-3 GFFs make no sense with unflattened sequences,
    as they have no set way of representing feature graphs)
  type: boolean
  inputBinding:
    prefix: -gff
- id: o
  doc: '|output FILE outfile defaults to STDOUT'
  type: boolean
  inputBinding:
    prefix: -o
- id: detail
  doc: show extra detail on features (asciitree mode only)
  type: boolean
  inputBinding:
    prefix: -detail
- id: e
  doc: '|ethresh INT sets the error threshold on unflattening by default this script
    will throw a wobbly if it encounters weird stuff in the genbank file - raise the
    error threshold to signal these to be ignored (and reported on STDERR)'
  type: boolean
  inputBinding:
    prefix: -e
- id: no_magic
  doc: suppress use_magic in unflattening (see Bio::SeqFeature::Tools::Unflattener
  type: boolean
  inputBinding:
    prefix: -nomagic
- id: no_typemap
  doc: suppress type mapping (see Bio::SeqFeature::Tools::TypeMapper
  type: boolean
  inputBinding:
    prefix: -notypemap
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_unflatten_seq.pl
