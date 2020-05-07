class: CommandLineTool
id: idfetch.cwl
inputs:
- id: t
  doc: 'Output type:      1=text asn.1 2=Binary asn.1 3=Genbank (Seq-entry only) 4=genpept
    (Seq-entry only) 5=fasta (table for history) 6=quality scores (Seq-entry only)
    7=Entrez DocSums 8=fasta reverse complement'
  type: boolean
  inputBinding:
    prefix: -t
- id: i
  doc: 'Type of lookup:   0 - get Seq-entry 1 - get gi state (output to stderr) 2
    - get SeqIds 3 - get gi historyn (sequence change only) 4 - get gi revision history
    (any change to asn.1)'
  type: boolean
  inputBinding:
    prefix: -i
- id: g
  doc: File with list of gi's, accessions, accession.version's, fasta seqid's to dump
    [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -G
- id: c
  doc: 'Max complexity:   0 - get the whole blob 1 - get the bioseq of interest 2
    - get the minimal bioseq-set containing the bioseq of interest 3 - get the minimal
    nuc-prot containing the bioseq of interest 4 - get the minimal pub-set containing
    the bioseq of interest'
  type: boolean
  inputBinding:
    prefix: -c
- id: f
  doc: "flaTtened SeqId, format:  'type(name,accession,release,version)' as '5(HUMHBB)'\
    \ or  type=accession, or  type:number  [String]  Optional"
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: 'Fasta style SeqId ENCLOSED IN QUOTES: lcl|int or str bbs|int bbm|int gb|acc|loc
    emb|acc|loc pir|acc|name sp|acc|name pat|country|patent|seq gi|int dbj|acc|loc
    prf|acc|name pdb|entry|chain [String]  Optional'
  type: boolean
  inputBinding:
    prefix: -s
- id: l
  doc: Log file [File Out]  Optional
  type: boolean
  inputBinding:
    prefix: -l
- id: q
  doc: Generate gi list by entrez query [String]  Optional
  type: boolean
  inputBinding:
    prefix: -q
- id: q
  doc: Generate gi list by entrez query [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -Q
- id: n
  doc: Output only the list of gis, used with -q [T/F]  Optional
  type: boolean
  inputBinding:
    prefix: -n
- id: f
  doc: "Add features delimited by ','. Allowed values are: 'CDD', 'SNP', 'SNP_graph',\
    \ 'MGC', 'HPRD', 'STS','tRNA','microRNA'. [String]  Optional"
  type: boolean
  inputBinding:
    prefix: -F
outputs: []
cwlVersion: v1.1
baseCommand:
- idfetch
