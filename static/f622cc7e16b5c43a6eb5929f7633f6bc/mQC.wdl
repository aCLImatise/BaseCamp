version 1.0

task MQC.pl {
  input {
    Boolean? mapper
    Boolean? max_multimap
    Boolean? ens_db
    Boolean? offset
    Boolean? plastid_bam
    Boolean? min_length_plastid
    Boolean? max_length_plastid
    Boolean? offset_file
    Boolean? min_length_gd
    Boolean? max_length_gd
    Boolean? out_folder
    Boolean? tool_dir
    Boolean? plot_rpf_tool
    Boolean? out_html
    Boolean? out_zip
  }
  command <<<
    mQC.pl \
      ~{true="--mapper" false="" mapper} \
      ~{true="--maxmultimap" false="" max_multimap} \
      ~{true="--ens_db" false="" ens_db} \
      ~{true="--offset" false="" offset} \
      ~{true="--plastid_bam" false="" plastid_bam} \
      ~{true="--min_length_plastid" false="" min_length_plastid} \
      ~{true="--max_length_plastid" false="" max_length_plastid} \
      ~{true="--offset_file" false="" offset_file} \
      ~{true="--min_length_gd" false="" min_length_gd} \
      ~{true="--max_length_gd" false="" max_length_gd} \
      ~{true="--outfolder" false="" out_folder} \
      ~{true="--tool_dir" false="" tool_dir} \
      ~{true="--plotrpftool" false="" plot_rpf_tool} \
      ~{true="--outhtml" false="" out_html} \
      ~{true="--outzip" false="" out_zip}
  >>>
  parameter_meta {
    mapper: "the mapper you used to generate the SAM file (STAR, TopHat2, HiSat2) (default: STAR)"
    max_multimap: "the maximum amount of multimapped positions used for filtering the reads (default: 16)"
    ens_db: "path to the Ensembl SQLite database with annotation info. If you want mappingQC to download the right Ensembl database automatically for you, put in 'get' for this parameter (mandatory)"
    offset: "the offset determination method. Possible options: - plastid: calculate the offsets with Plastid (Dunn et al. 2016) - standard: use the standard offsets from the paper of Ingolia et al. (2012) (default option) - from_file: use offsets from an input file"
    plastid_bam: "the mapping bam file for Plastid offset generation (default: convert)"
    min_length_plastid: "the minimum RPF length for Plastid offset generation (default 22)"
    max_length_plastid: "the maximum RPF length for Plastid offset generation (default 34)"
    offset_file: "the offsets input file"
    min_length_gd: "minimum RPF length used for gene distributions and metagenic classification (default: 26)."
    max_length_gd: "maximum RPF length used for gene distributions and metagenic classification (default: 34)."
    out_folder: "the folder to store the output files (default: work_dir/mQC_output)"
    tool_dir: "folder with necessary additional mappingQC tools. More information below in the dependencies section. (default: search for the default tool directory location in the active conda environment)"
    plot_rpf_tool: "the module that will be used for plotting the RPF-phase figure Possible options: - grouped2D: use Seaborn to plot a grouped 2D bar chart (default) - pyplot3D: use mplot3d to plot a 3D bar chart. This tool can suffer sometimes from Escher effects, as it tries to plot a 3D plot with the 2D software of pyplot and matplotlib. - mayavi: use the mayavi package to plot a 3D bar chart. This tool only works on local systems with graphical cards."
    out_html: "custom name for the output HTML file (default: work_dir/mQC_experiment_name.html)"
    out_zip: "custom name for output ZIP file (default: work_dir/mQC_experiment_name.zip)"
  }
}