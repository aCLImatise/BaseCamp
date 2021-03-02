class: CommandLineTool
id: grafimo.cwl
inputs:
- id: in_cores
  doc: "[NCORES]      Number of cores to use. The default value is 0 (auto-\ndetection).\
    \ If you chose to query the whole genome\nvariation graph note that the default\
    \ option is to use\nonly one core to avoid memory issues"
  type: boolean?
  inputBinding:
    prefix: --cores
- id: in_path_linear_required
  doc: "[LINEAR-GENOME], --linear-genome [LINEAR-GENOME]\nPath to the linear genome\
    \ (FASTA format required)"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_path_vcf_file
  doc: "[VCF], --vcf [VCF]\nPath to the VCF file. The VCF must be compressed (e.g.\n\
    myvcf.vcf.gz)"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_path_vg_format
  doc: "[GRAPH-GENOME], --graph-genome [GRAPH-GENOME]\nPath to the VG genome graph\
    \ file (VG or XG format)"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_path_directory_containing
  doc: "[GRAPH-GENOMES-DIR], --graph-genome-dir [GRAPH-GENOMES-DIR]\nPath to a directory\
    \ containing a variable number of\nVGs graph genomes (VG or XG format)"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_bed_file
  doc: Path to the BED file containing the regions to scan
  type: File?
  inputBinding:
    prefix: --bedfile
- id: in_motif
  doc: "Path to the motif file (JASPAR or MEME format\nrequired)"
  type: long[]
  inputBinding:
    prefix: --motif
- id: in_chromosomes_vg_built
  doc: "[1 [X ...]], --chroms [1 [X ...]]\nChromosomes for which the VG will be built\
    \ or in which\nGRAFIMO will search the given motif. To consider all\nthe chromosomes,\
    \ just skip this argument. This\nargument can be used during the building of VGs\
    \ or\nduring their scan for the occurrences of the given\nmotif"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_path_background_file
  doc: "[BACKGROUND], --bgfile [BACKGROUND]\nPath to the background file [optional]"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_pseudocount_add_motif
  doc: "[PSEUDOCOUNT], --pseudo [PSEUDOCOUNT]\nPseudocount to add to motif counts\
    \ [optional]"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_threshold_applied_ispossible
  doc: "[THRESHOLD], --threshold [THRESHOLD]\nThreshold that will be applied on the\
    \ P-values (by\ndefault) of each found motif occurrence. It is\npossible to apply\
    \ the threshold on the q-values using\nthe -q (--qvalueT) option. Default is 1e-4\
    \ [optional]"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_no_q_value
  doc: With this parameter the q-values will not be computed
  type: boolean?
  inputBinding:
    prefix: --no-qvalue
- id: in_no_reverse
  doc: With this parameter GRAFIMO will scan only the forward
  type: boolean?
  inputBinding:
    prefix: --no-reverse
- id: in_recomb
  doc: "While scanning the genome variation graph for the\ngiven motif occurrences\
    \ will be considered all\npossible recombinants that can be obtained with the\n\
    genomic variants used to build the VG"
  type: boolean?
  inputBinding:
    prefix: --recomb
- id: in_re_index
  doc: "When building the genome variation graph the VCF will\nbe indexed with tabix,\
    \ even if its TBI file it is\nalready available. This option can only be used\
    \ with\nthe 'buildvg' pipeline"
  type: boolean?
  inputBinding:
    prefix: --reindex
- id: in_q_value_t
  doc: "The threshold will be applied on the q-values, rather\nthan the P-values"
  type: boolean?
  inputBinding:
    prefix: --qvalueT
- id: in_top_graphs
  doc: "[GRAPHS_NUM]\nThe PNG image of the regions containing the top\nGRAPHS_NUM\
    \ sequences (sorted by P-value) will be\nstored in the output directory"
  type: Directory?
  inputBinding:
    prefix: --top-graphs
- id: in_verbose
  doc: "Output a lot of additional information about the\nexecution\n"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_workflow
  doc: "This option accpets only two values: 'buildvg' or\n'findmotif'. This option\
    \ is mandatory. When used\n'buildvg', GRAFIMO will compute the genome variation\n\
    graph for each chromosome or a user defined subset,\nfrom the given reference\
    \ genome and VCF file. When\nused 'findmotif' GRAFIMO will scan a given VG or\
    \ all\nthe VGs contained in a given directory, for the given\nmotif occurrences"
  type: string
  inputBinding:
    position: 0
- id: in_strand
  doc: -f, --text-only       Print the results in TSV directly to the standard
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: -o [OUTDIR], --out [OUTDIR]
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_top_graphs
  doc: "[GRAPHS_NUM]\nThe PNG image of the regions containing the top\nGRAPHS_NUM\
    \ sequences (sorted by P-value) will be\nstored in the output directory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_top_graphs)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/grafimo:1.1.3--py38h0731a9c_0
cwlVersion: v1.1
baseCommand:
- grafimo
