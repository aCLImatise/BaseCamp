class: CommandLineTool
id: secapr_assemble_reads.cwl
inputs:
- id: in_input
  doc: "Call the folder that contains the trimmed reads,\norganized in a separate\
    \ subfolder for each sample. The\nname of the subfolder has to start with the\
    \ sample\nname, delimited with an underscore [_]"
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_output
  doc: The output directory where results will be saved
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_assembler
  doc: The assembler to use (default = abyss).
  type: string?
  inputBinding:
    prefix: --assembler
- id: in_km_er
  doc: Set the kmer value
  type: string?
  inputBinding:
    prefix: --kmer
- id: in_contig_length
  doc: "Set the minimum contig length for the assembly.\nContigs that are shorter\
    \ than this threshold will be\ndiscarded."
  type: long?
  inputBinding:
    prefix: --contig_length
- id: in_max_memory
  doc: "[Option only for Trinity assembler] Set the maximum\nmemory for Trinity to\
    \ use in this format: 1G or 1000M\n(default: 8G)."
  type: long?
  inputBinding:
    prefix: --max_memory
- id: in_single_reads
  doc: "Use this flag if you additionally want to use single\nreads for the assembly"
  type: boolean?
  inputBinding:
    prefix: --single_reads
- id: in_disable_stats
  doc: "Use this flag if you want to disabel generation of\nstats (can be necessary\
    \ because previous stats files\ncan't be found if reads are used that were not\n\
    previously processed with SECAPR)"
  type: boolean?
  inputBinding:
    prefix: --disable_stats
- id: in_cores
  doc: "For parallel processing you can set the number of\ncores you want to run the\
    \ assembly on.\n"
  type: long?
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output directory where results will be saved
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- secapr
- assemble_reads
