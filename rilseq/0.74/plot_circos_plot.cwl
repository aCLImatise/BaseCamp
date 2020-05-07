class: CommandLineTool
id: plot_circos_plot.py.cwl
inputs:
- id: reads_in
  doc: An output file of map_chimeric_fragments.py with the chimeric fragments.
  type: string
  inputBinding:
    position: 0
- id: summary
  doc: 'Plot only significant interactions that appear in the summary file. (default:
    None)'
  type: string
  inputBinding:
    prefix: --summary
- id: region
  doc: 'Split the genome to windows of this size. (default: 200)'
  type: string
  inputBinding:
    prefix: --region
- id: srn_as
  doc: 'Color the lines going to or coming from sRNAs in orange. Must be used with
    ec_dir. (default: False)'
  type: boolean
  inputBinding:
    prefix: --sRNAs
- id: known
  doc: 'Use this file to color the known interactions in red. Must give --refseq_dir
    as well. (default: None)'
  type: string
  inputBinding:
    prefix: --known
- id: refseq_dir
  doc: 'RefSeq dir of organism to get the gene description from. Should be given if
    --known is given. (default: /home/users/assafp/EC/)'
  type: string
  inputBinding:
    prefix: --refseq_dir
- id: ec_dir
  doc: 'EcoCyc data dir, used to map the regions to genes. If not given only the regions
    will be reported (default: None)'
  type: string
  inputBinding:
    prefix: --ec_dir
- id: chr_n
  doc: 'Name of chromosome to plot. (default: chr)'
  type: string
  inputBinding:
    prefix: --chrn
- id: print_chr
  doc: 'Name of chromosome in circos. (default: ecmain)'
  type: string
  inputBinding:
    prefix: --print_chr
- id: min_interactions
  doc: 'Minimum number of interactions between two regions to plot. (default: 100)'
  type: long
  inputBinding:
    prefix: --min_interactions
- id: ec_chr_list
  doc: 'A comma separated dictionary of chromosome names from the EcoCyc names to
    the bam file names. The names in the bam file should be the same as the UCSC genome
    browser (they will be printed). (default: COLI-K12,chr)'
  type: string
  inputBinding:
    prefix: --EC_chrlist
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_circos_plot.py
