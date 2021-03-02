version 1.0

task PanphlanProfilingpy {
  input {
    Directory? i_dna
    File? pan_genome
    File? i_cov_mat
    File? o_matrix
    File? o_cov_mat
    File? o_cov_plot_normed
    File? o_idx
    Int? min_coverage
    Int? left_max
    Int? right_min
    String? th_non_present
    String? th_present
    String? th_multicopy
    Int? strain_similarity_perc
    Boolean? add_ref
    File? func_an_not
    File? field
    String matrix_dot
  }
  command <<<
    panphlan_profiling_py \
      ~{matrix_dot} \
      ~{if defined(i_dna) then ("--i_dna " +  '"' + i_dna + '"') else ""} \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(i_cov_mat) then ("--i_covmat " +  '"' + i_cov_mat + '"') else ""} \
      ~{if defined(o_matrix) then ("--o_matrix " +  '"' + o_matrix + '"') else ""} \
      ~{if defined(o_cov_mat) then ("--o_covmat " +  '"' + o_cov_mat + '"') else ""} \
      ~{if defined(o_cov_plot_normed) then ("--o_covplot_normed " +  '"' + o_cov_plot_normed + '"') else ""} \
      ~{if defined(o_idx) then ("--o_idx " +  '"' + o_idx + '"') else ""} \
      ~{if defined(min_coverage) then ("--min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(left_max) then ("--left_max " +  '"' + left_max + '"') else ""} \
      ~{if defined(right_min) then ("--right_min " +  '"' + right_min + '"') else ""} \
      ~{if defined(th_non_present) then ("--th_non_present " +  '"' + th_non_present + '"') else ""} \
      ~{if defined(th_present) then ("--th_present " +  '"' + th_present + '"') else ""} \
      ~{if defined(th_multicopy) then ("--th_multicopy " +  '"' + th_multicopy + '"') else ""} \
      ~{if defined(strain_similarity_perc) then ("--strain_similarity_perc " +  '"' + strain_similarity_perc + '"') else ""} \
      ~{if (add_ref) then "--add_ref" else ""} \
      ~{if defined(func_an_not) then ("--func_annot " +  '"' + func_an_not + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i_dna: "Input directory of panphlan_map.py results, containing\\nSAMPLE.csv.bz2 files"
    pan_genome: "Path to pangenome tsv file exported from ChocoPhlAn"
    i_cov_mat: "Path to precomputed coverage matrix"
    o_matrix: "Path for presence/absence matrix output"
    o_cov_mat: "Write raw gene-family coverage matrix in provided file"
    o_cov_plot_normed: "Filename for normalized gene-family coverage plot."
    o_idx: "Write gene-family plateau definitions (1, -1, -2, -3)"
    min_coverage: "Minimum coverage threshold, default: 2X"
    left_max: "Strain presence/absence plateau curve threshold: left\\nmax [1.25]"
    right_min: "Strain presence/absence plateau curve threshold: right\\nmin [0.75]"
    th_non_present: "Gene families threshold: not present if lower"
    th_present: "Gene families threshold: present if higher"
    th_multicopy: "Gene families threshold: multicopy if higher"
    strain_similarity_perc: "Minimum threshold (percentage) for genome length to\\nadd a reference genome to presence/absence matrix\\n(default: 50)."
    add_ref: "Add reference genomes to gene-family presence/absence"
    func_an_not: "Path to file mapping UniRef IDs to GO/KEGG/...\\nannotation for functional characterization"
    field: "Field in the annotation file that must be added to the\\npresence/absence matrix\\n"
    matrix_dot: "-v, --verbose         Show progress information"
  }
  output {
    File out_stdout = stdout()
    File out_o_matrix = "${in_o_matrix}"
  }
}