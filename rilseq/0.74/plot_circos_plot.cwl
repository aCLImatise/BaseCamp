#!/usr/bin/env cwl-runner

baseCommand:
- plot_circos_plot.py
class: CommandLineTool
cwlVersion: v1.0
id: plot_circos_plot.py
inputs:
- doc: An output file of map_chimeric_fragments.py with the chimeric fragments.
  id: reads_in
  inputBinding:
    position: 0
  type: string
- doc: 'Plot only significant interactions that appear in the summary file. (default:
    None)'
  id: summary
  inputBinding:
    prefix: --summary
  type: string
- doc: 'Split the genome to windows of this size. (default: 200)'
  id: region
  inputBinding:
    prefix: --region
  type: string
- doc: 'Color the lines going to or coming from sRNAs in orange. Must be used with
    ec_dir. (default: False)'
  id: srn_as
  inputBinding:
    prefix: --sRNAs
  type: boolean
- doc: 'Use this file to color the known interactions in red. Must give --refseq_dir
    as well. (default: None)'
  id: known
  inputBinding:
    prefix: --known
  type: string
- doc: 'RefSeq dir of organism to get the gene description from. Should be given if
    --known is given. (default: /home/users/assafp/EC/)'
  id: refseq_dir
  inputBinding:
    prefix: --refseq_dir
  type: string
- doc: 'EcoCyc data dir, used to map the regions to genes. If not given only the regions
    will be reported (default: None)'
  id: ec_dir
  inputBinding:
    prefix: --ec_dir
  type: string
- doc: 'Name of chromosome to plot. (default: chr)'
  id: chr_n
  inputBinding:
    prefix: --chrn
  type: string
- doc: 'Name of chromosome in circos. (default: ecmain)'
  id: print_chr
  inputBinding:
    prefix: --print_chr
  type: string
- doc: 'Minimum number of interactions between two regions to plot. (default: 100)'
  id: min_interactions
  inputBinding:
    prefix: --min_interactions
  type: long
- doc: 'A comma separated dictionary of chromosome names from the EcoCyc names to
    the bam file names. The names in the bam file should be the same as the UCSC genome
    browser (they will be printed). (default: COLI-K12,chr)'
  id: ec_chr_list
  inputBinding:
    prefix: --EC_chrlist
  type: string
