class: CommandLineTool
id: svict.cwl
inputs:
- id: in_input
  doc: "[FILE]\nInput alignment file. This file should be a sorted SAM or BAM file."
  type: boolean
  inputBinding:
    prefix: --input
- id: in_reference
  doc: "[FILE]\nReference geneome that the reads are algined to."
  type: boolean
  inputBinding:
    prefix: --reference
- id: in_output
  doc: "[STRING]\nPrefix of output file (default out)"
  type: File
  inputBinding:
    prefix: --output
- id: in_annotation
  doc: "[FILE]\nGTF file. Enables annotation of SV calls and fusion identification."
  type: boolean
  inputBinding:
    prefix: --annotation
- id: in_min_support
  doc: "[INT]\nThe minimum number of supporting reads required to be considered a\
    \ SV (default 2)."
  type: boolean
  inputBinding:
    prefix: --min_support
- id: in_max_support
  doc: "[INT]\nThe maximum number of supporting reads required to be considered a\
    \ SV, could be used to filter out germline calls (default unlimited)."
  type: boolean
  inputBinding:
    prefix: --max_support
- id: in_min_length
  doc: "[INT]\nMin SV length (default 30)."
  type: boolean
  inputBinding:
    prefix: --min_length
- id: in_max_length
  doc: "[INT]\nMax SV length (default 20000)."
  type: boolean
  inputBinding:
    prefix: --max_length
- id: in_print_reads
  doc: Print all contigs and associated reads as additional output out.vcf.reads,
    out is the prefix specified in -o|--output, when activated.
  type: boolean
  inputBinding:
    prefix: --print_reads
- id: in_print_stats
  doc: ":\nPrint statistics of detected SV calls and fusions to stderr."
  type: boolean
  inputBinding:
    prefix: --print_stats
- id: in_window_size
  doc: "[INT]\nThe size of the sliding window collecting all reads with soft-clip/split\
    \ positions in it to form the breakpoint specific cluster for contig assembly.\n\
    Larger window size could assign a read to more clusters for potentially higher\
    \ sensitivity with the cost of increased running time (default 3)."
  type: boolean
  inputBinding:
    prefix: --window_size
- id: in_min_sc
  doc: "[INT]\nMinimum soft clip length for a read to be considered as unmapped or\
    \ incorrectly mapped to be extracted for contig assembly (default 10)."
  type: boolean
  inputBinding:
    prefix: --min_sc
- id: in_no_in_del
  doc: Ignore indels in the input BAM/SAM (I and D in cigar) when extracting potential
    breakpoints.
  type: boolean
  inputBinding:
    prefix: --no_indel
- id: in_assembler_overlap
  doc: "[INT]\nThe minimum lenth of overlaps between 2 reads in overlap-layout-consensus\
    \ contig assembly (default 50)."
  type: boolean
  inputBinding:
    prefix: --assembler_overlap
- id: in_anchor
  doc: "[INT]\nAnchor length. Intervals shorter than this value would be discarded\
    \ in interval chaining procedure for locating contigs (default 30)."
  type: boolean
  inputBinding:
    prefix: --anchor
- id: in_km_er
  doc: "[INT]\nk-mer length to index and remap assembled contigs to reference genome\
    \ (default 14)."
  type: boolean
  inputBinding:
    prefix: --kmer
- id: in_uncertainty
  doc: "[INT]\nUncertainty around the breakpoint position.\nSee \"Interval Chaining\
    \ for Optimal Mapping\" in publication (default 8)."
  type: boolean
  inputBinding:
    prefix: --uncertainty
- id: in_sub_optimal
  doc: "[INT]\nFor a contig, SViCT will report all paths which are not worse than\
    \ the optimal by c on the DAGs to achieve potentially better sensitivity.\nSee\
    \ \"Interval Chaining for Optimal Mapping\" in publication (default 0 - co-optimals\
    \ only, negative value disables)."
  type: boolean
  inputBinding:
    prefix: --sub_optimal
- id: in_heuristic
  doc: Use clustering heuristic (good for data with PCR duplicates).
  type: boolean
  inputBinding:
    prefix: --heuristic
- id: in_dump_contigs
  doc: Dump contigs in fastq format for mapping.
  type: boolean
  inputBinding:
    prefix: --dump_contigs
- id: in_resume
  doc: ":\nResume at the interval chaining stage with mapped contigs."
  type: boolean
  inputBinding:
    prefix: --resume
- id: in_svc_it
  doc: -- Structural Variant in ctDNA Sequencing Data
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "[STRING]\nPrefix of output file (default out)"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- svict
