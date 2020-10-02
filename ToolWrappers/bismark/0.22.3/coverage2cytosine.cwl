class: CommandLineTool
id: coverage2cytosine.cwl
inputs:
- id: in_oslash_output
  doc: Name of the output file, mandatory.
  type: File
  inputBinding:
    prefix: -o/--output
- id: in_dir
  doc: Output directory. Output is written to the current directory if not specified
    explicitly.
  type: Directory
  inputBinding:
    prefix: --dir
- id: in_genome_folder
  doc: "Enter the genome folder you wish to use to extract sequences from (relative\
    \ or full path). Accepted\nformats are FastA files ending with '.fa' or '.fasta'.\
    \ Specifying a genome folder path is mandatory."
  type: File
  inputBinding:
    prefix: --genome_folder
- id: in_cx_slash_cx_context
  doc: "The output file contains information on every single cytosine in the genome\
    \ irrespective of\nits context. This applies to both forward and reverse strands.\
    \ Please be aware that this will\ngenerate output files with > 1.1 billion lines\
    \ for a mammalian genome such as human or mouse.\nDefault: OFF (i.e. Default =\
    \ CpG context only)."
  type: File
  inputBinding:
    prefix: -CX/--CX_context
- id: in_merge_cpg
  doc: "Using this option will post-process the genome-wide report to write out an\
    \ additional coverage\nfile (see above for the coverage file format) which has\
    \ the top and bottom strand methylation\nevidence pooled into a single CpG dinucleotide\
    \ entity. This may be the desirable input format\nfor some downstream processing\
    \ tools such as the R-package bsseq (by K.D. Hansen). An example would be:\ngenome-wide\
    \ CpG report (old)\ngi|9626372|ref|NC_001422.1|     157     +       313     156\
    \     CG\ngi|9626372|ref|NC_001422.1|     158     -       335     156     CG\n\
    merged CpG evidence coverage file (new)\ngi|9626372|ref|NC_001422.1|     157 \
    \    158     67.500000       648     312\nThis option is currently experimental,\
    \ and only works if CpG context only and a single genome-wide report\nwere specified\
    \ (i.e. it doesn't work with the options --CX or --split_by_chromosome).\nIf --zero_based\
    \ was specified as well the output coverage file is in zero-based half-open format\
    \ like\nbedGraph files."
  type: boolean
  inputBinding:
    prefix: --merge_CpG
- id: in_discordance
  doc: "When in '--merge_CpG' mode, apply a filter for the maximum allowed discordance\
    \ between top and bottom\nstrand methylation values expressed as the absolute\
    \ difference in percent methylation. Discordant CpGs\nare written to a file called\
    \ 'discordant_CpG_evidence.cov' (not merged). As example consider:\ntop:     gi|170079663|ref|NC_010473.1|\
    \   573     +       5       6       CG      CGC\nbottom:  gi|170079663|ref|NC_010473.1|\
    \   574     -       13      4       CG      CGG\nwith '--discordance 20'\nThe\
    \ methylation % difference here is 31%, so the read would go into the discordant.cov\
    \ file. CpG positions\nfor which either the top or bottom strand was not measured\
    \ at all will not be assessed for discordance, and\nhence appear in the regular\
    \ 'merged_CpG_evidence.cov' file."
  type: long
  inputBinding:
    prefix: --discordance
- id: in_gc_slash_gc_context
  doc: "In addition to normal processing this option will reprocess the genome to\
    \ find methylation in\nGpC context. This might be useful for specialist applications\
    \ where GpC methylases had been\ndeployed. The output format is exactly the same\
    \ as for the normal cytosine report, and only\npositions covered by at least one\
    \ read are reported (output file ends in .GpC_report.txt). In addition\nthis will\
    \ write out a Bismark coverage file (ending in GpC.cov)."
  type: File
  inputBinding:
    prefix: --gc/--gc_context
- id: in_nome_seq
  doc: "Sample is NOMe-Seq (nucleosome occupancy and methylome sequencing) where accessible\
    \ DNA gets methylated\nin a GpC context (sets option '--gc' as well). The option\
    \ '--nome-seq':\n(i) filters the genome-wide CpG-report to only output cytosines\
    \ in ACG and TCG context\n(ii) filters the GC context output to only report cytosines\
    \ in GCA, GCC and GCT context\nBoth of these measures aim to reduce unwanted biases,\
    \ i.e. the influence of GCG and CCG on endogenous\nCpG methylation, and the inlfluence\
    \ of CpG methylation on (the NOMe-Seq specific) GC context methylation.\nPLEASE\
    \ NOTE that NOMe-Seq data requires a .cov.gz file as input which has been generated\
    \ in\nnon-CG mode (--CX), else the GpC output file will be empty... Default: OFF."
  type: boolean
  inputBinding:
    prefix: --nome-seq
- id: in_coverage_threshold
  doc: "Positions have to be covered by at least INT calls (irrespective of their\
    \ methylation state) before\nthey get reported. For NOMe-seq, the minimum threshold\
    \ is automatically set to 1 unless specified explicitly.\nSetting a coverage threshold\
    \ does not work in conjunction with --merge_CpGs. Default: 0 (i.e. all genomic\
    \ positions get reported)."
  type: long
  inputBinding:
    prefix: --coverage_threshold
- id: in_ff
  doc: "In addition to the standard output selecting --ff will also extract a four\
    \ and five (tetra/penta)\nnucleotide context for the cytosines in question. Too\
    \ short sequences (e.g. at the edges of the\nchromosome) will be left blank; sequences\
    \ containing Ns are ignored.ll"
  type: boolean
  inputBinding:
    prefix: --ff
- id: in_zero_based
  doc: 'Uses 0-based coordinates instead of 1-based coordinates throughout. Default:
    OFF.'
  type: boolean
  inputBinding:
    prefix: --zero_based
- id: in_split_by_chromosome
  doc: "Writes the output into individual files for each chromosome instead of a single\
    \ output file. Files\nwill be named to include the input filename and the chromosome\
    \ number."
  type: boolean
  inputBinding:
    prefix: --split_by_chromosome
- id: in_gzip
  doc: Output file will be GZIP compressed (ending in .gz). Only works for standard
    CpG- and CX-output.
  type: File
  inputBinding:
    prefix: --gzip
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_oslash_output
  doc: Name of the output file, mandatory.
  type: File
  outputBinding:
    glob: $(inputs.in_oslash_output)
- id: out_dir
  doc: Output directory. Output is written to the current directory if not specified
    explicitly.
  type: Directory
  outputBinding:
    glob: $(inputs.in_dir)
- id: out_cx_slash_cx_context
  doc: "The output file contains information on every single cytosine in the genome\
    \ irrespective of\nits context. This applies to both forward and reverse strands.\
    \ Please be aware that this will\ngenerate output files with > 1.1 billion lines\
    \ for a mammalian genome such as human or mouse.\nDefault: OFF (i.e. Default =\
    \ CpG context only)."
  type: File
  outputBinding:
    glob: $(inputs.in_cx_slash_cx_context)
- id: out_gc_slash_gc_context
  doc: "In addition to normal processing this option will reprocess the genome to\
    \ find methylation in\nGpC context. This might be useful for specialist applications\
    \ where GpC methylases had been\ndeployed. The output format is exactly the same\
    \ as for the normal cytosine report, and only\npositions covered by at least one\
    \ read are reported (output file ends in .GpC_report.txt). In addition\nthis will\
    \ write out a Bismark coverage file (ending in GpC.cov)."
  type: File
  outputBinding:
    glob: $(inputs.in_gc_slash_gc_context)
- id: out_gzip
  doc: Output file will be GZIP compressed (ending in .gz). Only works for standard
    CpG- and CX-output.
  type: File
  outputBinding:
    glob: $(inputs.in_gzip)
cwlVersion: v1.1
baseCommand:
- coverage2cytosine
