class: CommandLineTool
id: mtglink.py.cwl
inputs:
- id: in_gfa
  doc: 'Input GFA file (GFA 2.0) (format: xxx.gfa)'
  type: File?
  inputBinding:
    prefix: -gfa
- id: in_chunk_size_bp
  doc: Chunk size (bp)
  type: long?
  inputBinding:
    prefix: -c
- id: in_bam
  doc: "BAM file: linked reads mapped on current genome\nassembly (format: xxx.bam)"
  type: File?
  inputBinding:
    prefix: -bam
- id: in_fast_q
  doc: 'File of indexed reads (format: xxx.fastq | xxx.fq)'
  type: File?
  inputBinding:
    prefix: -fastq
- id: in_index
  doc: 'Prefix of barcodes index file (format: xxx.shelve)'
  type: File?
  inputBinding:
    prefix: -index
- id: in_minimal_frequence_barcodes
  doc: "Minimal frequence of barcodes extracted in the chunk\nof size '-c' [default:\
    \ 2]"
  type: long?
  inputBinding:
    prefix: -f
- id: in_out
  doc: Output directory [default './mtglink_results']
  type: Directory?
  inputBinding:
    prefix: -out
- id: in_ref_dir
  doc: Directory containing the reference sequences if any
  type: Directory?
  inputBinding:
    prefix: -refDir
- id: in_line
  doc: "Line of GFA file input from which to start analysis\n(if not provided, start\
    \ analysis from first line of\nGFA file input) [optional]"
  type: File?
  inputBinding:
    prefix: -line
- id: in_rb_xu
  doc: "File containing the reads of the union (if already\nextracted) [optional]"
  type: File?
  inputBinding:
    prefix: -rbxu
- id: in_kmer_sizes_used
  doc: "[KMER ...]         k-mer size(s) used for gap-filling [default: [51, 41,\n\
    31, 21]]"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_force
  doc: To force search on all '-k' values provided
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_minimal_abundance_threshold
  doc: "[ABUNDANCE_THRESHOLD ...]\nMinimal abundance threshold for solid k-mers [default:\n\
    [3, 2]]"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_ext
  doc: "Extension size of the gap on both sides (bp);\ndetermine start/end of gapfilling\
    \ [default: '500']"
  type: long?
  inputBinding:
    prefix: -ext
- id: in_max_nodes
  doc: "Maximum number of nodes in contig graph [default:\n1000]"
  type: long?
  inputBinding:
    prefix: -max-nodes
- id: in_max_length
  doc: 'Maximum length of gapfilling (bp) [default: 10000]'
  type: long?
  inputBinding:
    prefix: -max-length
- id: in_nb_cores
  doc: 'Number of cores [default: 1]'
  type: long?
  inputBinding:
    prefix: -nb-cores
- id: in_max_memory
  doc: 'Max memory for graph building (in MBytes) [default: 0]'
  type: long?
  inputBinding:
    prefix: -max-memory
- id: in_verbose
  doc: 'Verbosity level [default: 0]'
  type: long?
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output directory [default './mtglink_results']
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mtglink:1.1.0--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- mtglink.py
