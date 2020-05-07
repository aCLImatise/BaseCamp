class: CommandLineTool
id: mQC.pl.cwl
inputs:
- id: mapper
  doc: 'the mapper you used to generate the SAM file (STAR, TopHat2, HiSat2) (default:
    STAR)'
  type: boolean
  inputBinding:
    prefix: --mapper
- id: max_multimap
  doc: 'the maximum amount of multimapped positions used for filtering the reads (default:
    16)'
  type: boolean
  inputBinding:
    prefix: --maxmultimap
- id: ens_db
  doc: path to the Ensembl SQLite database with annotation info. If you want mappingQC
    to download the right Ensembl database automatically for you, put in 'get' for
    this parameter (mandatory)
  type: boolean
  inputBinding:
    prefix: --ens_db
- id: offset
  doc: 'the offset determination method. Possible options: - plastid: calculate the
    offsets with Plastid (Dunn et al. 2016) - standard: use the standard offsets from
    the paper of Ingolia et al. (2012) (default option) - from_file: use offsets from
    an input file'
  type: boolean
  inputBinding:
    prefix: --offset
- id: plastid_bam
  doc: 'the mapping bam file for Plastid offset generation (default: convert)'
  type: boolean
  inputBinding:
    prefix: --plastid_bam
- id: min_length_plastid
  doc: the minimum RPF length for Plastid offset generation (default 22)
  type: boolean
  inputBinding:
    prefix: --min_length_plastid
- id: max_length_plastid
  doc: the maximum RPF length for Plastid offset generation (default 34)
  type: boolean
  inputBinding:
    prefix: --max_length_plastid
- id: offset_file
  doc: the offsets input file
  type: boolean
  inputBinding:
    prefix: --offset_file
- id: min_length_gd
  doc: 'minimum RPF length used for gene distributions and metagenic classification
    (default: 26).'
  type: boolean
  inputBinding:
    prefix: --min_length_gd
- id: max_length_gd
  doc: 'maximum RPF length used for gene distributions and metagenic classification
    (default: 34).'
  type: boolean
  inputBinding:
    prefix: --max_length_gd
- id: out_folder
  doc: 'the folder to store the output files (default: work_dir/mQC_output)'
  type: boolean
  inputBinding:
    prefix: --outfolder
- id: tool_dir
  doc: 'folder with necessary additional mappingQC tools. More information below in
    the dependencies section. (default: search for the default tool directory location
    in the active conda environment)'
  type: boolean
  inputBinding:
    prefix: --tool_dir
- id: plot_rpf_tool
  doc: 'the module that will be used for plotting the RPF-phase figure Possible options:
    - grouped2D: use Seaborn to plot a grouped 2D bar chart (default) - pyplot3D:
    use mplot3d to plot a 3D bar chart. This tool can suffer sometimes from Escher
    effects, as it tries to plot a 3D plot with the 2D software of pyplot and matplotlib.
    - mayavi: use the mayavi package to plot a 3D bar chart. This tool only works
    on local systems with graphical cards.'
  type: boolean
  inputBinding:
    prefix: --plotrpftool
- id: out_html
  doc: 'custom name for the output HTML file (default: work_dir/mQC_experiment_name.html)'
  type: boolean
  inputBinding:
    prefix: --outhtml
- id: out_zip
  doc: 'custom name for output ZIP file (default: work_dir/mQC_experiment_name.zip)'
  type: boolean
  inputBinding:
    prefix: --outzip
outputs: []
cwlVersion: v1.1
baseCommand:
- mQC.pl
