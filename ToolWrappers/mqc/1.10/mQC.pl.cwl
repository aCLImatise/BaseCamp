class: CommandLineTool
id: mQC.pl.cwl
inputs:
- id: in_work_dir
  doc: 'working directory to run the scripts in (default: current working directory)'
  type: boolean?
  inputBinding:
    prefix: --work_dir
- id: in_experiment_name
  doc: customly chosen experiment name for the mappingQC run (mandatory)
  type: boolean?
  inputBinding:
    prefix: --experiment_name
- id: in_sam_file
  doc: path to the SAM/BAM file that comes out of the mapping script of PROTEOFORMER
    (mandatory)
  type: File?
  inputBinding:
    prefix: --samfile
- id: in_cores
  doc: 'the amount of cores to run the script on (integer, default: 5)'
  type: boolean?
  inputBinding:
    prefix: --cores
- id: in_species
  doc: the studied species (mandatory)
  type: boolean?
  inputBinding:
    prefix: --species
- id: in_ens_v
  doc: the version of the Ensembl database you want to use
  type: boolean?
  inputBinding:
    prefix: --ens_v
- id: in_tmp
  doc: 'temporary folder for storing temporary files of mappingQC (default: work_dir/tmp)'
  type: boolean?
  inputBinding:
    prefix: --tmp
- id: in_unique
  doc: whether to use only the unique alignments.
  type: boolean?
  inputBinding:
    prefix: --unique
- id: in_mapper
  doc: 'the mapper you used to generate the SAM file (STAR, TopHat2, HiSat2) (default:
    STAR)'
  type: boolean?
  inputBinding:
    prefix: --mapper
- id: in_max_multimap
  doc: 'the maximum amount of multimapped positions used for filtering the reads (default:
    16)'
  type: boolean?
  inputBinding:
    prefix: --maxmultimap
- id: in_ens_db
  doc: path to the Ensembl SQLite database with annotation info. If you want mappingQC
    to download the right Ensembl database automatically for you, put in 'get' for
    this parameter (mandatory)
  type: boolean?
  inputBinding:
    prefix: --ens_db
- id: in_offset
  doc: "the offset determination method.\nPossible options:\n- plastid: calculate\
    \ the offsets with Plastid (Dunn et al. 2016)\n- standard: use the standard offsets\
    \ from the paper of Ingolia et al. (2012) (default option)\n- from_file: use offsets\
    \ from an input file"
  type: boolean?
  inputBinding:
    prefix: --offset
- id: in_plastid_bam
  doc: 'the mapping bam file for Plastid offset generation (default: convert)'
  type: boolean?
  inputBinding:
    prefix: --plastid_bam
- id: in_min_length_plastid
  doc: the minimum RPF length for Plastid offset generation (default 22)
  type: boolean?
  inputBinding:
    prefix: --min_length_plastid
- id: in_max_length_plastid
  doc: the maximum RPF length for Plastid offset generation (default 34)
  type: boolean?
  inputBinding:
    prefix: --max_length_plastid
- id: in_offset_file
  doc: the offsets input file
  type: boolean?
  inputBinding:
    prefix: --offset_file
- id: in_min_length_gd
  doc: 'minimum RPF length used for gene distributions and metagenic classification
    (default: 26).'
  type: boolean?
  inputBinding:
    prefix: --min_length_gd
- id: in_max_length_gd
  doc: 'maximum RPF length used for gene distributions and metagenic classification
    (default: 34).'
  type: boolean?
  inputBinding:
    prefix: --max_length_gd
- id: in_out_folder
  doc: 'the folder to store the output files (default: work_dir/mQC_output)'
  type: Directory?
  inputBinding:
    prefix: --outfolder
- id: in_tool_dir
  doc: 'folder with necessary additional mappingQC tools. More information below in
    the dependencies section. (default: search for the default tool directory location
    in the active conda environment)'
  type: boolean?
  inputBinding:
    prefix: --tool_dir
- id: in_plot_rpf_tool
  doc: "the module that will be used for plotting the RPF-phase figure\nPossible options:\n\
    - grouped2D: use Seaborn to plot a grouped 2D bar chart (default)\n- pyplot3D:\
    \ use mplot3d to plot a 3D bar chart. This tool can suffer sometimes from Escher\
    \ effects, as it tries to plot a 3D plot with the 2D software of pyplot and matplotlib.\n\
    - mayavi: use the mayavi package to plot a 3D bar chart. This tool only works\
    \ on local systems with graphical cards."
  type: boolean?
  inputBinding:
    prefix: --plotrpftool
- id: in_out_html
  doc: 'custom name for the output HTML file (default: work_dir/mQC_experiment_name.html)'
  type: File?
  inputBinding:
    prefix: --outhtml
- id: in_out_zip
  doc: 'custom name for output ZIP file (default: work_dir/mQC_experiment_name.zip)'
  type: File?
  inputBinding:
    prefix: --outzip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sam_file
  doc: path to the SAM/BAM file that comes out of the mapping script of PROTEOFORMER
    (mandatory)
  type: File?
  outputBinding:
    glob: $(inputs.in_sam_file)
- id: out_out_folder
  doc: 'the folder to store the output files (default: work_dir/mQC_output)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_folder)
- id: out_out_html
  doc: 'custom name for the output HTML file (default: work_dir/mQC_experiment_name.html)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_html)
- id: out_out_zip
  doc: 'custom name for output ZIP file (default: work_dir/mQC_experiment_name.zip)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_zip)
hints: []
cwlVersion: v1.1
baseCommand:
- mQC.pl
