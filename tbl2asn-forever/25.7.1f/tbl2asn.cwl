class: CommandLineTool
id: tbl2asn.cwl
inputs:
- id: t
  doc: Template File [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -t
- id: a
  doc: File Type a Any r20u Runs of 20+ Ns are gaps, 100 Ns are unknown length r20k
    Runs of 20+ Ns are gaps, 100 Ns are known length r10u Runs of 10+ Ns are gaps,
    100 Ns are unknown length r10k Runs of 10+ Ns are gaps, 100 Ns are known length
    s FASTA Set (s Batch, s1 Pop, s2 Phy, s3 Mut, s4 Eco, s9 Small-genome) d FASTA
    Delta, di FASTA Delta with Implicit Gaps l FASTA+Gap Alignment (l Batch, l1 Pop,
    l2 Phy, l3 Mut, l4 Eco, l9 Small-genome) z FASTA with Gap Lines e PHRAP/ACE b
    ASN.1 for -M flag
  type: boolean
  inputBinding:
    prefix: -a
- id: f
  doc: Feature ID Links o By Overlap p By Product l By Label and Location s Suppress
    links forced by -M
  type: boolean
  inputBinding:
    prefix: -F
- id: a
  doc: Accession [String]  Optional
  type: boolean
  inputBinding:
    prefix: -A
- id: c
  doc: Genome Center Tag [String]  Optional
  type: boolean
  inputBinding:
    prefix: -C
- id: n
  doc: Organism Name [String]  Optional
  type: boolean
  inputBinding:
    prefix: -n
- id: j
  doc: Source Qualifiers [String]  Optional
  type: boolean
  inputBinding:
    prefix: -j
- id: y
  doc: Comment [String]  Optional
  type: boolean
  inputBinding:
    prefix: -y
- id: y
  doc: Comment File [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -Y
- id: d
  doc: Descriptors File [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -D
- id: f
  doc: Single Table File [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -f
- id: k
  doc: CDS Flags (combine any of the following letters) c Annotate Longest ORF r Allow
    Runon ORFs m Allow Alternative Starts k Set Conflict on Mismatch
  type: boolean
  inputBinding:
    prefix: -k
- id: v
  doc: Verification (combine any of the following letters) v Validate with Normal
    Stringency r Validate without Country Check c BarCode Validation b Generate GenBank
    Flatfile g Generate Gene Report t Validate with TSA Check
  type: boolean
  inputBinding:
    prefix: -V
- id: g
  doc: Alignment Gap Flags (comma separated fields, e.g., p,-,-,-,?,. ) n Nucleotide
    or p Protein, Begin, Middle, End Gap Characters, Missing Characters, Match Characters
  type: boolean
  inputBinding:
    prefix: -G
- id: q
  doc: mRNA Title Policy s Special mRNA Titles r RefSeq mRNA Titles
  type: boolean
  inputBinding:
    prefix: -Q
- id: h
  doc: Hold Until Publish y Hold for One Year mm/dd/yyyy
  type: boolean
  inputBinding:
    prefix: -H
- id: z
  doc: Discrepancy Report Output File [File Out]  Optional
  type: boolean
  inputBinding:
    prefix: -Z
- id: c
  doc: Cleanup (combine any of the following letters) d Correct Collection Dates (assume
    month first) D Correct Collection Dates (assume day first) b Append note to coding
    regions that overlap other coding regions with similar product names and do not
    contain 'ABC' x Extend partial ends of features by one or two nucleotides to abut
    gaps or sequence ends p Add exception to non-extendable partials s Add exception
    to short introns f Fix product names
  type: boolean
  inputBinding:
    prefix: -c
- id: z
  doc: Cleanup Log File [File Out]  Optional
  type: boolean
  inputBinding:
    prefix: -z
- id: x
  doc: Extra Flags (combine any of the following letters) A Automatic definition line
    generator C Apply comments in .cmt files to all sequences E Treat like eukaryota
    in the Discrepancy Report
  type: boolean
  inputBinding:
    prefix: -X
- id: w
  doc: Single Structured Comment File (overrides the use of -X C) [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -w
- id: m
  doc: Master Genome Flags n Normal b Big Sequence p Power Option t TSA
  type: boolean
  inputBinding:
    prefix: -M
- id: l
  doc: 'Add type of evidence used to assert linkage across assembly gaps (only for
    TSA records). Must be one of the following: paired-ends align-genus align-xgenus
    align-trnscpt within-clone clone-contig map strobe'
  type: boolean
  inputBinding:
    prefix: -l
- id: m
  doc: Lineage to use for Discrepancy Report tests
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- tbl2asn
