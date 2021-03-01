class: CommandLineTool
id: wgscoverageplotter.py.cwl
inputs:
- id: in_clip
  doc: "Don't show coverage to be greater than 'max-depth' in the SVG file.\nDefault:\
    \ false"
  type: boolean?
  inputBinding:
    prefix: --clip
- id: in_dimension
  doc: "Image Dimension. a dimension can be specified as '[integer]x[integer]'\nor\
    \ it can be the path to an existing png,jpg,xcf,svg file.\nDefault: java.awt.Dimension[width=1000,height=500]"
  type: boolean?
  inputBinding:
    prefix: --dimension
- id: in_disable_paired_overlap
  doc: "Count overlapping bases with mate for paired-end\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: --disable-paired-overlap
- id: in_help_format
  doc: What kind of help. One of [usage,markdown,xml].
  type: boolean?
  inputBinding:
    prefix: --helpFormat
- id: in_include_contig_regex
  doc: "Only keep chromosomes matching this regular expression. Ignore if blank.\n\
    Default: <empty string>"
  type: boolean?
  inputBinding:
    prefix: --include-contig-regex
- id: in_mapq
  doc: "min mapping quality\nDefault: 1"
  type: boolean?
  inputBinding:
    prefix: --mapq
- id: in_max_depth
  doc: "Max depth to display. The special value '-1' will first compute the\naverage\
    \ depth and the set the max depth to 2*average\nDefault: 100"
  type: boolean?
  inputBinding:
    prefix: --max-depth
- id: in_min_contig_length
  doc: "Skip chromosome with length < 'x'. A distance specified as a positive\ninteger.Commas\
    \ are removed. The following suffixes are interpreted :\nb,bp,k,kb,m,mb\nDefault:\
    \ 0"
  type: boolean?
  inputBinding:
    prefix: --min-contig-length
- id: in_output
  doc: 'Output file. Optional . Default: stdout'
  type: File?
  inputBinding:
    prefix: --output
- id: in_partition
  doc: "When using the option --samples, use this partition Data partitioning\nusing\
    \ the SAM Read Group (see\nhttps://gatkforums.broadinstitute.org/gatk/discussion/6472/\
    \ ) . It can\nbe any combination of sample, library....\nDefault: sample\nPossible\
    \ Values: [readgroup, sample, library, platform, center, sample_by_platform, sample_by_center,\
    \ sample_by_platform_by_center, any]"
  type: boolean?
  inputBinding:
    prefix: --partition
- id: in_percentile
  doc: "How to we bin the coverage under one pixel.\nDefault: median\nPossible Values:\
    \ [median, average, min, max]"
  type: boolean?
  inputBinding:
    prefix: --percentile
- id: in_points
  doc: "Plot the coverage using points instead of areas.\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: --points
- id: in_samples
  doc: "Limit to those groups. See also --partition. Multiple separated with\ncommas.\n\
    Default: <empty string>"
  type: boolean?
  inputBinding:
    prefix: --samples
- id: in_skip_contig_regex
  doc: "Skip chromosomes matching this regular expression. Ignore if blank.\nDefault:\
    \ <empty string>"
  type: boolean?
  inputBinding:
    prefix: --skip-contig-regex
- id: in_set_style_elements
  doc: "set some css style elements. '-Dkey=value'. Undocumented.\nSyntax: -Dkey=value\n\
    Default: {}\n"
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output file. Optional . Default: stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/jvarkit-wgscoverageplotter:20201223--1
cwlVersion: v1.1
baseCommand:
- wgscoverageplotter.py
