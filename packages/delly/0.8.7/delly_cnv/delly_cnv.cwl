class: CommandLineTool
id: delly_cnv.cwl
inputs:
- id: in_arg_genome_file
  doc: '[ --genome ] arg                   genome file'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_arg_min_mapping
  doc: '[ --quality ] arg (=10)            min. mapping quality'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_arg_input_mappability
  doc: '[ --mappability ] arg              input mappability map'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_baseline_ploidy
  doc: '[ --ploidy ] arg (=2)              baseline ploidy'
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_arg_output_file
  doc: '[ --outfile ] arg (="cnv.bcf")     output CNV file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_output_coverage
  doc: '[ --covfile ] arg (="cov.gz")      output coverage file'
  type: File?
  inputBinding:
    prefix: -c
- id: in_arg_min_sd
  doc: '[ --sdrd ] arg (=2)                min. SD read-depth shift'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_arg_min_cn
  doc: '[ --cn-offset ] arg (=0.100000001) min. CN offset'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_min_size
  doc: '[ --cnv-size ] arg (=1000)         min. CNV size'
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_arg_delly_sv
  doc: '[ --svfile ] arg                   delly SV file for breakpoint refinement'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_input_file
  doc: '[ --vcffile ] arg                  input VCF/BCF file for re-genotyping'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in__copynumber_segmentation
  doc: '[ --segmentation ]                 copy-number segmentation'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_arg_window_size
  doc: '[ --window-size ] arg (=10000)     window size'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_window_offset
  doc: '[ --window-offset ] arg (=10000)   window offset'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_arg_input_bed
  doc: '[ --bed-intervals ] arg            input BED file'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_k
  doc: '[ --fraction-window ] arg (=0.25)  min. callable window fraction [0,1]'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_use_mappable_bases
  doc: '[ --adaptive-windowing ]           use mappable bases for window size'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_arg_scanning_size
  doc: '[ --scan-window ] arg (=10000)     scanning window size'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_arg_uniqueness_filter
  doc: "[ --fraction-unique ] arg (=0.800000012)\nuniqueness filter for scan windows\n\
    [0,1]"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_scanning_regions
  doc: '[ --scan-regions ] arg             scanning regions in BED format'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_median_mad
  doc: '[ --mad-cutoff ] arg (=3)          median + 3 * mad count cutoff'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_arg_extreme_fraction
  doc: "[ --percentile ] arg (=0.000500000024)\nexcl. extreme GC fraction"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_scan_window_selection
  doc: '[ --no-window-selection ]          no scan window selection'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_aligned_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --outfile ] arg (="cnv.bcf")     output CNV file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
- id: out_arg_output_coverage
  doc: '[ --covfile ] arg (="cov.gz")      output coverage file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_coverage)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/delly:0.8.7--hf3ca161_0
cwlVersion: v1.1
baseCommand:
- delly
- cnv
