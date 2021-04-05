class: CommandLineTool
id: isoquant.py.cwl
inputs:
- id: in_output
  doc: "output folder, will be created automatically\n[default=isoquant_output]"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_debug
  doc: Debug log output.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_genedb
  doc: gene database in gffutils DB format or GTF/GFF format
  type: string?
  inputBinding:
    prefix: --genedb
- id: in_complete_genedb
  doc: "use this flag if gene annotation contains transcript\nand gene metafeatures,\
    \ e.g. with official annotations,\nsuch as GENCODE; speeds up gene database conversion"
  type: boolean?
  inputBinding:
    prefix: --complete_genedb
- id: in_reference
  doc: "reference genome in FASTA format, should be provided\nto compute some additional\
    \ stats and when reads in\nFASTA/FASTQ are used as an input"
  type: string?
  inputBinding:
    prefix: --reference
- id: in_index
  doc: "genome index for specified aligner, should be provided\nonly when reads are\
    \ used as an input"
  type: string?
  inputBinding:
    prefix: --index
- id: in_clean_start
  doc: Do not use previously generated index, feature db or
  type: boolean?
  inputBinding:
    prefix: --clean_start
- id: in_fast_q
  doc: "input FASTQ file(s), each file will be treated as a\nseparate sample; reference\
    \ genome should be provided\nwhen using reads as input"
  type: string[]
  inputBinding:
    prefix: --fastq
- id: in_bam_list
  doc: "text file with list of BAM files, one file per line,\nleave empty line between\
    \ samples"
  type: File?
  inputBinding:
    prefix: --bam_list
- id: in_fast_q_list
  doc: "text file with list of FASTQ files, one file per line,\nleave empty line between\
    \ samples"
  type: File?
  inputBinding:
    prefix: --fastq_list
- id: in_read_assignments
  doc: "reuse read assignments (binary format) to construct\ntranscript models"
  type: string[]
  inputBinding:
    prefix: --read_assignments
- id: in_data_type
  doc: "type of data to process, supported types are:\nassembly, pacbio_ccs, nanopore"
  type: string?
  inputBinding:
    prefix: --data_type
- id: in_stranded
  doc: "reads strandness type, supported values are: forward,\nreverse, none"
  type: string?
  inputBinding:
    prefix: --stranded
- id: in_polya_trimmed
  doc: "set if reads were polyA trimmed; polyA tails will not\nbe required for transcript\
    \ model construction"
  type: boolean?
  inputBinding:
    prefix: --polya_trimmed
- id: in_check_canonical
  doc: "report whether splice junctions are canonical\n(requires reference genome)"
  type: boolean?
  inputBinding:
    prefix: --check_canonical
- id: in_fl_data
  doc: "reads represent FL transcripts; both ends of the read\nare considered to be\
    \ reliable"
  type: boolean?
  inputBinding:
    prefix: --fl_data
- id: in_full_help
  doc: show full list of options
  type: boolean?
  inputBinding:
    prefix: --full_help
- id: in_test
  doc: run IsoQuant on toy dataset
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_threads
  doc: number of threads to use
  type: long?
  inputBinding:
    prefix: --threads
- id: in_labels
  doc: "sample names to be used; input file names are used if\nnot set"
  type: string[]
  inputBinding:
    prefix: --labels
- id: in_read_group
  doc: "a way to group feature counts (no grouping by\ndefault): by BAM file tag (tag:TAG),\
    \ using additional\nfile (file:FILE:READ_COL:GROUP_COL:DELIM), using read\nid\
    \ (read_id:DELIM)"
  type: File?
  inputBinding:
    prefix: --read_group
- id: in_sq_anti_output
  doc: produce SQANTI-like TSV output (requires more time)
  type: boolean?
  inputBinding:
    prefix: --sqanti_output
- id: in_count_exons
  doc: perform exon and intron counting
  type: boolean?
  inputBinding:
    prefix: --count_exons
- id: in_matching_strategy
  doc: matching strategy to use from most strict to least
  type: string?
  inputBinding:
    prefix: --matching_strategy
- id: in_model_construction_strategy
  doc: "transcript model construction strategy to use\n"
  type: string?
  inputBinding:
    prefix: --model_construction_strategy
- id: in_alignments_dot
  doc: --bam BAM [BAM ...]   sorted and indexed BAM file(s), each file will be
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output folder, will be created automatically\n[default=isoquant_output]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/isoquant:1.2.0--0
cwlVersion: v1.1
baseCommand:
- isoquant.py
