class: CommandLineTool
id: MinYS.py.cwl
inputs:
- id: in_in
  doc: '(1 arg) :    Input reads file'
  type: boolean?
  inputBinding:
    prefix: -in
- id: in_arg_input_reads_first_file
  doc: '(1 arg) :    Input reads first file'
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_arg_input_reads_second_file
  doc: '(1 arg) :    Input reads second file'
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_f_of
  doc: '(1 arg) :    Input file of read files (if paired files, 2 columns tab-separated)'
  type: boolean?
  inputBinding:
    prefix: -fof
- id: in_out
  doc: '(1 arg) :    output directory for result files [Default: ./mtg_results]'
  type: Directory?
  inputBinding:
    prefix: -out
- id: in_ref
  doc: '(1 arg) :    Bwa index'
  type: boolean?
  inputBinding:
    prefix: -ref
- id: in_mask
  doc: '(1 arg) :    Bed file for region removed from mapping'
  type: boolean?
  inputBinding:
    prefix: -mask
- id: in_mini_a_bin
  doc: '(1 arg) :    Path to Minia binary (if not in $PATH'
  type: boolean?
  inputBinding:
    prefix: -minia-bin
- id: in_assembly_km_er_size
  doc: '(1 arg) :    Kmer size used for Minia assembly (should be given even if bypassing
    minia assembly step, usefull knowledge for gap-filling) [Default: 31]'
  type: boolean?
  inputBinding:
    prefix: -assembly-kmer-size
- id: in_assembly_abundance_min
  doc: '(1 arg) :    Minimal abundance of kmers used for assembly [Default: auto]'
  type: boolean?
  inputBinding:
    prefix: -assembly-abundance-min
- id: in_min_contig_size
  doc: '(1 arg) :    Minimal size for a contig to be used in gap-filling [Default:
    400]'
  type: boolean?
  inputBinding:
    prefix: -min-contig-size
- id: in_mtg_dir
  doc: '(1 arg) :    Path to MindTheGap build directory (if not in $PATH)'
  type: boolean?
  inputBinding:
    prefix: -mtg-dir
- id: in_gap_filling_km_er_size
  doc: '(1 arg) :    Kmer size used for gap-filling [Default: 31]'
  type: boolean?
  inputBinding:
    prefix: -gapfilling-kmer-size
- id: in_gap_filling_abundance_min
  doc: '(1 arg) :    Minimal abundance of kmers used for gap-filling [Default: auto]'
  type: boolean?
  inputBinding:
    prefix: -gapfilling-abundance-min
- id: in_max_nodes
  doc: '(1 arg) :    Maximum number of nodes in contig graph [Default: 300]'
  type: boolean?
  inputBinding:
    prefix: -max-nodes
- id: in_max_length
  doc: '(1 arg) :    Maximum length of gap-filling (nt) [Default: 50000]'
  type: boolean?
  inputBinding:
    prefix: -max-length
- id: in_arg_length_minimum
  doc: '(1 arg) :    Length of minimum prefix for node merging, default should work
    for most cases [Default: 100]'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_contigs
  doc: '(1 arg) :    Contigs in fasta format - override mapping and assembly'
  type: boolean?
  inputBinding:
    prefix: -contigs
- id: in_graph
  doc: '(1 arg) :    Graph in h5 format - override graph creation'
  type: boolean?
  inputBinding:
    prefix: -graph
- id: in_nb_cores
  doc: '(1 arg) :    Number of cores [Default: 0]'
  type: boolean?
  inputBinding:
    prefix: -nb-cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: '(1 arg) :    output directory for result files [Default: ./mtg_results]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- MinYS.py
