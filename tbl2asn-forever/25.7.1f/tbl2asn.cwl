#!/usr/bin/env cwl-runner

baseCommand:
- tbl2asn
class: CommandLineTool
cwlVersion: v1.0
id: tbl2asn
inputs:
- doc: Template File [File In]  Optional
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: File Type a Any r20u Runs of 20+ Ns are gaps, 100 Ns are unknown length r20k
    Runs of 20+ Ns are gaps, 100 Ns are known length r10u Runs of 10+ Ns are gaps,
    100 Ns are unknown length r10k Runs of 10+ Ns are gaps, 100 Ns are known length
    s FASTA Set (s Batch, s1 Pop, s2 Phy, s3 Mut, s4 Eco, s9 Small-genome) d FASTA
    Delta, di FASTA Delta with Implicit Gaps l FASTA+Gap Alignment (l Batch, l1 Pop,
    l2 Phy, l3 Mut, l4 Eco, l9 Small-genome) z FASTA with Gap Lines e PHRAP/ACE b
    ASN.1 for -M flag
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: Feature ID Links o By Overlap p By Product l By Label and Location s Suppress
    links forced by -M
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: Accession [String]  Optional
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: Genome Center Tag [String]  Optional
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: Organism Name [String]  Optional
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: Source Qualifiers [String]  Optional
  id: j
  inputBinding:
    prefix: -j
  type: boolean
- doc: Comment [String]  Optional
  id: y
  inputBinding:
    prefix: -y
  type: boolean
- doc: Comment File [File In]  Optional
  id: y
  inputBinding:
    prefix: -Y
  type: boolean
- doc: Descriptors File [File In]  Optional
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: Single Table File [File In]  Optional
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: CDS Flags (combine any of the following letters) c Annotate Longest ORF r Allow
    Runon ORFs m Allow Alternative Starts k Set Conflict on Mismatch
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: Verification (combine any of the following letters) v Validate with Normal
    Stringency r Validate without Country Check c BarCode Validation b Generate GenBank
    Flatfile g Generate Gene Report t Validate with TSA Check
  id: v
  inputBinding:
    prefix: -V
  type: boolean
- doc: Alignment Gap Flags (comma separated fields, e.g., p,-,-,-,?,. ) n Nucleotide
    or p Protein, Begin, Middle, End Gap Characters, Missing Characters, Match Characters
  id: g
  inputBinding:
    prefix: -G
  type: boolean
- doc: mRNA Title Policy s Special mRNA Titles r RefSeq mRNA Titles
  id: q
  inputBinding:
    prefix: -Q
  type: boolean
- doc: Hold Until Publish y Hold for One Year mm/dd/yyyy
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: Discrepancy Report Output File [File Out]  Optional
  id: z
  inputBinding:
    prefix: -Z
  type: boolean
- doc: Cleanup (combine any of the following letters) d Correct Collection Dates (assume
    month first) D Correct Collection Dates (assume day first) b Append note to coding
    regions that overlap other coding regions with similar product names and do not
    contain 'ABC' x Extend partial ends of features by one or two nucleotides to abut
    gaps or sequence ends p Add exception to non-extendable partials s Add exception
    to short introns f Fix product names
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: Cleanup Log File [File Out]  Optional
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: Extra Flags (combine any of the following letters) A Automatic definition line
    generator C Apply comments in .cmt files to all sequences E Treat like eukaryota
    in the Discrepancy Report
  id: x
  inputBinding:
    prefix: -X
  type: boolean
- doc: Single Structured Comment File (overrides the use of -X C) [File In]  Optional
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: Master Genome Flags n Normal b Big Sequence p Power Option t TSA
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: 'Add type of evidence used to assert linkage across assembly gaps (only for
    TSA records). Must be one of the following: paired-ends align-genus align-xgenus
    align-trnscpt within-clone clone-contig map strobe'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: Lineage to use for Discrepancy Report tests
  id: m
  inputBinding:
    prefix: -m
  type: boolean
