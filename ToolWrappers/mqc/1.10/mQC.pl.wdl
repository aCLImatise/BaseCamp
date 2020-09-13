version 1.0

task MQCpl {
  input {
    Boolean? work_dir
    Boolean? experiment_name
    File? sam_file
    Boolean? cores
    Boolean? species
    Boolean? ens_v
    Boolean? tmp
    Boolean? unique
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
    Directory? out_folder
    Boolean? tool_dir
    Boolean? plot_rpf_tool
    File? out_html
    File? out_zip
  }
  command <<<
    mQC_pl \
      ~{if (work_dir) then "--work_dir" else ""} \
      ~{if (experiment_name) then "--experiment_name" else ""} \
      ~{if (sam_file) then "--samfile" else ""} \
      ~{if (cores) then "--cores" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (ens_v) then "--ens_v" else ""} \
      ~{if (tmp) then "--tmp" else ""} \
      ~{if (unique) then "--unique" else ""} \
      ~{if (mapper) then "--mapper" else ""} \
      ~{if (max_multimap) then "--maxmultimap" else ""} \
      ~{if (ens_db) then "--ens_db" else ""} \
      ~{if (offset) then "--offset" else ""} \
      ~{if (plastid_bam) then "--plastid_bam" else ""} \
      ~{if (min_length_plastid) then "--min_length_plastid" else ""} \
      ~{if (max_length_plastid) then "--max_length_plastid" else ""} \
      ~{if (offset_file) then "--offset_file" else ""} \
      ~{if (min_length_gd) then "--min_length_gd" else ""} \
      ~{if (max_length_gd) then "--max_length_gd" else ""} \
      ~{if (out_folder) then "--outfolder" else ""} \
      ~{if (tool_dir) then "--tool_dir" else ""} \
      ~{if (plot_rpf_tool) then "--plotrpftool" else ""} \
      ~{if (out_html) then "--outhtml" else ""} \
      ~{if (out_zip) then "--outzip" else ""}
  >>>
  parameter_meta {
    work_dir: "working directory to run the scripts in (default: current working directory)"
    experiment_name: "customly chosen experiment name for the mappingQC run (mandatory)"
    sam_file: "path to the SAM/BAM file that comes out of the mapping script of PROTEOFORMER (mandatory)"
    cores: "the amount of cores to run the script on (integer, default: 5)"
    species: "the studied species (mandatory)"
    ens_v: "the version of the Ensembl database you want to use"
    tmp: "temporary folder for storing temporary files of mappingQC (default: work_dir/tmp)"
    unique: "whether to use only the unique alignments."
    mapper: "the mapper you used to generate the SAM file (STAR, TopHat2, HiSat2) (default: STAR)"
    max_multimap: "the maximum amount of multimapped positions used for filtering the reads (default: 16)"
    ens_db: "path to the Ensembl SQLite database with annotation info. If you want mappingQC to download the right Ensembl database automatically for you, put in 'get' for this parameter (mandatory)"
    offset: "the offset determination method.\\nPossible options:\\n- plastid: calculate the offsets with Plastid (Dunn et al. 2016)\\n- standard: use the standard offsets from the paper of Ingolia et al. (2012) (default option)\\n- from_file: use offsets from an input file"
    plastid_bam: "the mapping bam file for Plastid offset generation (default: convert)"
    min_length_plastid: "the minimum RPF length for Plastid offset generation (default 22)"
    max_length_plastid: "the maximum RPF length for Plastid offset generation (default 34)"
    offset_file: "the offsets input file"
    min_length_gd: "minimum RPF length used for gene distributions and metagenic classification (default: 26)."
    max_length_gd: "maximum RPF length used for gene distributions and metagenic classification (default: 34)."
    out_folder: "the folder to store the output files (default: work_dir/mQC_output)"
    tool_dir: "folder with necessary additional mappingQC tools. More information below in the dependencies section. (default: search for the default tool directory location in the active conda environment)"
    plot_rpf_tool: "the module that will be used for plotting the RPF-phase figure\\nPossible options:\\n- grouped2D: use Seaborn to plot a grouped 2D bar chart (default)\\n- pyplot3D: use mplot3d to plot a 3D bar chart. This tool can suffer sometimes from Escher effects, as it tries to plot a 3D plot with the 2D software of pyplot and matplotlib.\\n- mayavi: use the mayavi package to plot a 3D bar chart. This tool only works on local systems with graphical cards."
    out_html: "custom name for the output HTML file (default: work_dir/mQC_experiment_name.html)"
    out_zip: "custom name for output ZIP file (default: work_dir/mQC_experiment_name.zip)"
  }
  output {
    File out_stdout = stdout()
    File out_sam_file = "${in_sam_file}"
    Directory out_out_folder = "${in_out_folder}"
    File out_out_html = "${in_out_html}"
    File out_out_zip = "${in_out_zip}"
  }
}