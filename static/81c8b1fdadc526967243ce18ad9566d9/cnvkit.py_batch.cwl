class: CommandLineTool
id: cnvkit.py_batch.cwl
inputs:
- id: in_seq_method
  doc: "Sequencing assay type: hybridization capture\n('hybrid'), targeted amplicon\
    \ sequencing ('amplicon'),\nor whole genome sequencing ('wgs'). Determines whether\n\
    and how to use antitarget bins. [Default: hybrid]"
  type: string?
  inputBinding:
    prefix: --seq-method
- id: in_segment_method
  doc: "Method used in the 'segment' step. [Default: cbs]"
  type: string?
  inputBinding:
    prefix: --segment-method
- id: in_haploid_x_reference
  doc: "Use or assume a male reference (i.e. female samples\nwill have +1 log-CNR\
    \ of chrX; otherwise male samples\nwould have -1 chrX)."
  type: boolean?
  inputBinding:
    prefix: --haploid-x-reference
- id: in_count_reads
  doc: "Get read depths by counting read midpoints within each\nbin. (An alternative\
    \ algorithm)."
  type: boolean?
  inputBinding:
    prefix: --count-reads
- id: in_drop_low_coverage
  doc: "Drop very-low-coverage bins before segmentation to\navoid false-positive deletions\
    \ in poor-quality tumor\nsamples."
  type: boolean?
  inputBinding:
    prefix: --drop-low-coverage
- id: in_number_subprocesses_used
  doc: "[PROCESSES], --processes [PROCESSES]\nNumber of subprocesses used to running\
    \ each of the BAM\nfiles in parallel. Without an argument, use the\nmaximum number\
    \ of available CPUs. [Default: process\neach BAM in serial]"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_r_script_path
  doc: "Path to the Rscript excecutable to use for running R\ncode. Use this option\
    \ to specify a non-default R\ninstallation. [Default: Rscript]"
  type: File?
  inputBinding:
    prefix: --rscript-path
- id: in_normal_samples_used
  doc: "[FILES [FILES ...]], --normal [FILES [FILES ...]]\nNormal samples (.bam) used\
    \ to construct the pooled,\npaired, or flat reference. If this option is used\
    \ but\nno filenames are given, a \"flat\" reference will be\nbuilt. Otherwise,\
    \ all filenames following this option\nwill be used."
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_fast_a
  doc: Reference genome, FASTA format (e.g. UCSC hg19.fa)
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_targets
  doc: Target intervals (.bed or .list)
  type: File?
  inputBinding:
    prefix: --targets
- id: in_anti_targets
  doc: Antitarget intervals (.bed or .list)
  type: File?
  inputBinding:
    prefix: --antitargets
- id: in_annotate
  doc: "Use gene models from this file to assign names to the\ntarget regions. Format:\
    \ UCSC refFlat.txt or\nensFlat.txt file (preferred), or BED, interval list,\n\
    GFF, or similar."
  type: File?
  inputBinding:
    prefix: --annotate
- id: in_short_names
  doc: Reduce multi-accession bait labels to be short and
  type: boolean?
  inputBinding:
    prefix: --short-names
- id: in_access
  doc: "Regions of accessible sequence on chromosomes (.bed),\nas output by the 'access'\
    \ command."
  type: File?
  inputBinding:
    prefix: --access
- id: in_anti_target_avg_size
  doc: "Average size of antitarget bins (results are\napproximate)."
  type: long?
  inputBinding:
    prefix: --antitarget-avg-size
- id: in_anti_target_min_size
  doc: "Minimum size of antitarget bins (smaller regions are\ndropped)."
  type: long?
  inputBinding:
    prefix: --antitarget-min-size
- id: in_output_reference
  doc: "Output filename/path for the new reference file being\ncreated. (If given,\
    \ ignores the -o/--output-dir option\nand will write the file to the given path.\
    \ Otherwise,\n\"reference.cnn\" will be created in the current\ndirectory or specified\
    \ output directory.)"
  type: File?
  inputBinding:
    prefix: --output-reference
- id: in_cluster
  doc: "Calculate and use cluster-specific summary stats in\nthe reference pool to\
    \ normalize samples."
  type: boolean?
  inputBinding:
    prefix: --cluster
- id: in_reference
  doc: Copy number reference file (.cnn).
  type: long?
  inputBinding:
    prefix: --reference
- id: in_output_dir
  doc: Output directory.
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_scatter
  doc: "Create a whole-genome copy ratio profile as a PDF\nscatter plot."
  type: boolean?
  inputBinding:
    prefix: --scatter
- id: in_diagram
  doc: "Create an ideogram of copy ratios on chromosomes as a\nPDF.\n"
  type: boolean?
  inputBinding:
    prefix: --diagram
- id: in_bam_files
  doc: Mapped sequence reads (.bam)
  type: string
  inputBinding:
    position: 0
- id: in_consistent_dot
  doc: --target-avg-size TARGET_AVG_SIZE
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_reference
  doc: "Output filename/path for the new reference file being\ncreated. (If given,\
    \ ignores the -o/--output-dir option\nand will write the file to the given path.\
    \ Otherwise,\n\"reference.cnn\" will be created in the current\ndirectory or specified\
    \ output directory.)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_reference)
- id: out_output_dir
  doc: Output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cnvkit:0.9.8--py_0
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- batch
