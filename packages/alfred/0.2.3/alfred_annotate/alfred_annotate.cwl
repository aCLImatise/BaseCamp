class: CommandLineTool
id: alfred_annotate.cwl
inputs:
- id: in_arg_max_distance
  doc: "[ --distance ] arg (=0)            max. distance (0: overlapping features\n\
    only)"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_arg_genemotiflevel_output
  doc: '[ --outgene ] arg (="gene.bed")    gene/motif-level output'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_arg_annotated_peaks
  doc: '[ --outfile ] arg (="anno.bed")    annotated peaks output'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_nearest_feature_only
  doc: '[ --nearest ]                      nearest feature only'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_gtfgff_file
  doc: '[ --gtf ] arg                      gtf/gff3 file'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_arg_genename_gtfgff
  doc: '[ --id ] arg (=gene_name)          gtf/gff3 attribute'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_gene_gtfgff
  doc: '[ --feature ] arg (=gene)          gtf/gff3 feature'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_bed_file
  doc: '[ --bed ] arg                      bed file'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_motif_file
  doc: '[ --motif ] arg                    motif file in jaspar or raw format'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_reference_file
  doc: '[ --reference ] arg                reference file'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_q
  doc: '[ --quantile ] arg (=0.949999988)  motif quantile score [0,1]'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_arg_gzipped_output
  doc: '[ --position ] arg                 gzipped output file of motif hits'
  type: File?
  inputBinding:
    prefix: -p
- id: in_exclude_overlapping_hits
  doc: "[ --exclude ]                      exclude overlapping hits of the same\n\
    motif\n"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_peaks_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_gzipped_output
  doc: '[ --position ] arg                 gzipped output file of motif hits'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_gzipped_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/alfred:0.2.3--hf3ca161_0
cwlVersion: v1.1
baseCommand:
- alfred
- annotate
