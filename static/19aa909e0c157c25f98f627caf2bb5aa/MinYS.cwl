class: CommandLineTool
id: MinYS.py.cwl
inputs:
- id: f_of
  doc: '(1 arg) :    Input file of read files (if paired files, 2 columns tab-separated)'
  type: boolean
  inputBinding:
    prefix: -fof
- id: out
  doc: '(1 arg) :    output directory for result files [Default: ./mtg_results]'
  type: boolean
  inputBinding:
    prefix: -out
- id: ref
  doc: '(1 arg) :    Bwa index'
  type: boolean
  inputBinding:
    prefix: -ref
- id: mask
  doc: '(1 arg) :    Bed file for region removed from mapping'
  type: boolean
  inputBinding:
    prefix: -mask
- id: mini_a_bin
  doc: '(1 arg) :    Path to Minia binary (if not in $PATH'
  type: boolean
  inputBinding:
    prefix: -minia-bin
- id: assembly_km_er_size
  doc: '(1 arg) :    Kmer size used for Minia assembly (should be given even if bypassing
    minia assembly step, usefull knowledge for gap-filling) [Default: 31]'
  type: boolean
  inputBinding:
    prefix: -assembly-kmer-size
- id: assembly_abundance_min
  doc: '(1 arg) :    Minimal abundance of kmers used for assembly [Default: auto]'
  type: boolean
  inputBinding:
    prefix: -assembly-abundance-min
- id: min_contig_size
  doc: '(1 arg) :    Minimal size for a contig to be used in gap-filling [Default:
    400]'
  type: boolean
  inputBinding:
    prefix: -min-contig-size
- id: mtg_dir
  doc: '(1 arg) :    Path to MindTheGap build directory (if not in $PATH)'
  type: boolean
  inputBinding:
    prefix: -mtg-dir
- id: gap_filling_km_er_size
  doc: '(1 arg) :    Kmer size used for gap-filling [Default: 31]'
  type: boolean
  inputBinding:
    prefix: -gapfilling-kmer-size
- id: gap_filling_abundance_min
  doc: '(1 arg) :    Minimal abundance of kmers used for gap-filling [Default: auto]'
  type: boolean
  inputBinding:
    prefix: -gapfilling-abundance-min
- id: max_nodes
  doc: '(1 arg) :    Maximum number of nodes in contig graph [Default: 300]'
  type: boolean
  inputBinding:
    prefix: -max-nodes
- id: max_length
  doc: '(1 arg) :    Maximum length of gap-filling (nt) [Default: 50000]'
  type: boolean
  inputBinding:
    prefix: -max-length
- id: l
  doc: '(1 arg) :    Length of minimum prefix for node merging, default should work
    for most cases [Default: 100]'
  type: boolean
  inputBinding:
    prefix: -l
- id: contigs
  doc: '(1 arg) :    Contigs in fasta format - override mapping and assembly'
  type: boolean
  inputBinding:
    prefix: -contigs
- id: graph
  doc: '(1 arg) :    Graph in h5 format - override graph creation'
  type: boolean
  inputBinding:
    prefix: -graph
- id: nb_cores
  doc: '(1 arg) :    Number of cores [Default: 0]'
  type: boolean
  inputBinding:
    prefix: -nb-cores
outputs: []
cwlVersion: v1.1
baseCommand:
- MinYS.py
