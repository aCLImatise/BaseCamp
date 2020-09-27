class: CommandLineTool
id: partition_gtf2gb.pl.cwl
inputs:
- id: in_min_cluster_size
  doc: "minimal number of genes in a one cluster,\ndefault n=20"
  type: long
  inputBinding:
    prefix: --minClusterSize
- id: in_max_flanking_region_size
  doc: "maximal size of flanking intergenic region to be\nexcised around clusters\
    \ of genes,\ndefault n=2000"
  type: long
  inputBinding:
    prefix: --maxFlankingRegionSize
- id: in_verbose
  doc: print verbose warning messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_synopsis
  doc: parition_gtf2gb.pl --genome=genome.fa --gtf=annotation.gtf --out.gb
  type: string
  inputBinding:
    position: 0
- id: in_entry_two
  doc: NCBI   CDS 7   28  0 + . gene_id "g3"; transcript_id "g3.t1"
  type: long
  inputBinding:
    position: 2
- id: in_locus
  doc: NC_010473.1_5128-6494   1367 bp  DNA
  type: string
  inputBinding:
    position: 0
- id: in_features
  doc: Location/Qualifiers
  type: string
  inputBinding:
    position: 1
- id: in_origin
  doc: "1 aatgcggtaa cttagagatt aggattgcgg agaataacaa ccgccgttct catcgagtaa\n61 tctccggata\
    \ tcgacccata acgggcaatg ataaaaggag taacctgtga aaaagatgca\n...\n1261 cagcgtatag\
    \ cgcgtggtgg tcaacgggct ttggtaatca agcgttttcg caggtgaaat\n1321 aagaatcagc atatccagtc\
    \ cttgcaggaa atttatgccg"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- partition_gtf2gb.pl
