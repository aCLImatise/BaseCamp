class: CommandLineTool
id: sansa_annotate.cwl
inputs:
- id: in_arg_output_annotation
  doc: '[ --anno ] arg (="anno.bcf")       output annotation VCF/BCF file'
  type: File?
  inputBinding:
    prefix: -a
- id: in_arg_gzipped_file
  doc: '[ --output ] arg (="query.tsv.gz") gzipped output file for query SVs'
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_database_vcfbcf
  doc: '[ --db ] arg                       database VCF/BCF file'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_arg_max_breakpoint
  doc: '[ --bpoffset ] arg (=50)           max. breakpoint offset'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_min_size
  doc: '[ --ratio ] arg (=0.800000012)     min. size ratio smaller SV to larger SV'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_s
  doc: '[ --strategy ] arg (=best)         matching strategy [best|all]'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_require_matching_types
  doc: '[ --notype ]                       do not require matching SV types'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_report_svs_match
  doc: "[ --nomatch ]                      report SVs without match in database\n\
    (ANNOID=None)"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_gtfgffbed_file
  doc: '[ --gtf ] arg                      gtf/gff3/bed file'
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
- id: in_arg_max_distance
  doc: "[ --distance ] arg (=1000)         max. distance (0: overlapping features\n\
    only)\n"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_input_dot_bcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_annotation
  doc: '[ --anno ] arg (="anno.bcf")       output annotation VCF/BCF file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_annotation)
- id: out_arg_gzipped_file
  doc: '[ --output ] arg (="query.tsv.gz") gzipped output file for query SVs'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_gzipped_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sansa:0.0.7--h4369c07_0
cwlVersion: v1.1
baseCommand:
- sansa
- annotate
