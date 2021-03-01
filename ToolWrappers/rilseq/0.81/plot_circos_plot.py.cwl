class: CommandLineTool
id: plot_circos_plot.py.cwl
inputs:
- id: in_summary
  doc: "Plot only significant interactions that appear in the\nsummary file. (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --summary
- id: in_region
  doc: "Split the genome to windows of this size. (default:\n200)"
  type: long?
  inputBinding:
    prefix: --region
- id: in_srn_as
  doc: "Color the lines going to or coming from sRNAs in\norange. Must be used with\
    \ ec_dir. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --sRNAs
- id: in_known
  doc: "Use this file to color the known interactions in red.\nMust give --refseq_dir\
    \ as well. (default: None)"
  type: File?
  inputBinding:
    prefix: --known
- id: in_refseq_dir
  doc: "RefSeq dir of organism to get the gene description\nfrom. Should be given\
    \ if --known is given. (default:\n/home/users/assafp/EC/)"
  type: string?
  inputBinding:
    prefix: --refseq_dir
- id: in_ec_dir
  doc: "EcoCyc data dir, used to map the regions to genes. If\nnot given only the\
    \ regions will be reported (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --ec_dir
- id: in_chr_n
  doc: 'Name of chromosome to plot. (default: chr)'
  type: string?
  inputBinding:
    prefix: --chrn
- id: in_print_chr
  doc: 'Name of chromosome in circos. (default: ecmain)'
  type: string?
  inputBinding:
    prefix: --print_chr
- id: in_min_interactions
  doc: "Minimum number of interactions between two regions to\nplot. (default: 100)"
  type: long?
  inputBinding:
    prefix: --min_interactions
- id: in_ec_chr_list
  doc: "A comma separated dictionary of chromosome names from\nthe EcoCyc names to\
    \ the bam file names. The names in\nthe bam file should be the same as the UCSC\
    \ genome\nbrowser (they will be printed). (default:\nCOLI-K12,chr)\n"
  type: File?
  inputBinding:
    prefix: --EC_chrlist
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rilseq:0.81--py_0
cwlVersion: v1.1
baseCommand:
- plot_circos_plot.py
