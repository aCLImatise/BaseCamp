class: CommandLineTool
id: cnvkit.py_segment.cwl
inputs:
- id: in_output
  doc: "Output table file name (CNR-like table of segments,\n.cns)."
  type: File?
  inputBinding:
    prefix: --output
- id: in_data_frame
  doc: "File name to save the raw R dataframe emitted by CBS\nor Fused Lasso. (Useful\
    \ for debugging.)"
  type: File?
  inputBinding:
    prefix: --dataframe
- id: in_method
  doc: "Segmentation method (see docs), or 'none' for\nchromosome arm-level averages\
    \ as segments. [Default:\ncbs]"
  type: string?
  inputBinding:
    prefix: --method
- id: in_threshold
  doc: "Significance threshold (p-value or FDR, depending on\nmethod) to accept breakpoints\
    \ during segmentation. For\nHMM methods, this is the smoothing window size."
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_drop_low_coverage
  doc: "Drop very-low-coverage bins before segmentation to\navoid false-positive deletions\
    \ in poor-quality tumor\nsamples."
  type: boolean?
  inputBinding:
    prefix: --drop-low-coverage
- id: in_drop_outliers
  doc: "Drop outlier bins more than this many multiples of the\n95th quantile away\
    \ from the average within a rolling\nwindow. Set to 0 for no outlier filtering.\
    \ [Default:\n10]"
  type: long?
  inputBinding:
    prefix: --drop-outliers
- id: in_r_script_path
  doc: "Path to the Rscript excecutable to use for running R\ncode. Use this option\
    \ to specify a non-default R\ninstallation. [Default: Rscript]"
  type: File?
  inputBinding:
    prefix: --rscript-path
- id: in_number_subprocesses_segment
  doc: "[PROCESSES], --processes [PROCESSES]\nNumber of subprocesses to segment in\
    \ parallel. Give 0\nor a negative value to use the maximum number of\navailable\
    \ CPUs. [Default: use 1 process]"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_smooth_cbs
  doc: "Perform an additional smoothing before CBS\nsegmentation, which in some cases\
    \ may increase the\nsensitivity. Used only for CBS method."
  type: boolean?
  inputBinding:
    prefix: --smooth-cbs
- id: in_vcf
  doc: "VCF file name containing variants for segmentation by\nallele frequencies."
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_sample_id
  doc: "Specify the name of the sample in the VCF (-v/--vcf)\nto use for b-allele\
    \ frequency extraction and as the\ndefault plot title."
  type: string?
  inputBinding:
    prefix: --sample-id
- id: in_normal_id
  doc: "Corresponding normal sample ID in the input VCF\n(-v/--vcf). This sample is\
    \ used to select only\ngermline SNVs to plot b-allele frequencies."
  type: string?
  inputBinding:
    prefix: --normal-id
- id: in_min_variant_depth
  doc: "Minimum read depth for a SNV to be displayed in the\nb-allele frequency plot.\
    \ [Default: 20]"
  type: long?
  inputBinding:
    prefix: --min-variant-depth
- id: in_ignore_vcfs_genotypes
  doc: "[ALT_FREQ], --zygosity-freq [ALT_FREQ]\nIgnore VCF's genotypes (GT field)\
    \ and instead infer\nzygosity from allele frequencies. [Default if used\nwithout\
    \ a number: 0.25]\n"
  type: boolean?
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output table file name (CNR-like table of segments,\n.cns)."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cnvkit:0.9.8--py_0
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- segment
