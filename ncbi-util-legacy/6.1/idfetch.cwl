#!/usr/bin/env cwl-runner

baseCommand:
- idfetch
class: CommandLineTool
cwlVersion: v1.0
id: idfetch
inputs:
- doc: 'Output type:      1=text asn.1 2=Binary asn.1 3=Genbank (Seq-entry only) 4=genpept
    (Seq-entry only) 5=fasta (table for history) 6=quality scores (Seq-entry only)
    7=Entrez DocSums 8=fasta reverse complement'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: 'Type of lookup:   0 - get Seq-entry 1 - get gi state (output to stderr) 2
    - get SeqIds 3 - get gi historyn (sequence change only) 4 - get gi revision history
    (any change to asn.1)'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: File with list of gi's, accessions, accession.version's, fasta seqid's to dump
    [File In]  Optional
  id: g
  inputBinding:
    prefix: -G
  type: boolean
- doc: 'Max complexity:   0 - get the whole blob 1 - get the bioseq of interest 2
    - get the minimal bioseq-set containing the bioseq of interest 3 - get the minimal
    nuc-prot containing the bioseq of interest 4 - get the minimal pub-set containing
    the bioseq of interest'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: "flaTtened SeqId, format:  'type(name,accession,release,version)' as '5(HUMHBB)'\
    \ or  type=accession, or  type:number  [String]  Optional"
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: 'Fasta style SeqId ENCLOSED IN QUOTES: lcl|int or str bbs|int bbm|int gb|acc|loc
    emb|acc|loc pir|acc|name sp|acc|name pat|country|patent|seq gi|int dbj|acc|loc
    prf|acc|name pdb|entry|chain [String]  Optional'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Log file [File Out]  Optional
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: Generate gi list by entrez query [String]  Optional
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: Generate gi list by entrez query [File In]  Optional
  id: q
  inputBinding:
    prefix: -Q
  type: boolean
- doc: Output only the list of gis, used with -q [T/F]  Optional
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: "Add features delimited by ','. Allowed values are: 'CDD', 'SNP', 'SNP_graph',\
    \ 'MGC', 'HPRD', 'STS','tRNA','microRNA'. [String]  Optional"
  id: f
  inputBinding:
    prefix: -F
  type: boolean
