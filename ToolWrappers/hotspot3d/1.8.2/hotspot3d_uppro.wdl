version 1.0

task Hotspot3dUppro {
  input {
    Directory? output_dir
    Boolean? pdb_file_dir
    Boolean? measure
    Boolean? parallel
    Boolean? max_processes
    Boolean? gene_file
    Boolean? three_d_distance_cut_off
    Boolean? linear_distance_cut_off
    Boolean? cmd_list_submit_file
    Boolean? hold
  }
  command <<<
    hotspot3d uppro \
      ~{if (output_dir) then "--output-dir" else ""} \
      ~{if (pdb_file_dir) then "--pdb-file-dir" else ""} \
      ~{if (measure) then "--measure" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (max_processes) then "--max-processes" else ""} \
      ~{if (gene_file) then "--gene-file" else ""} \
      ~{if (three_d_distance_cut_off) then "--3d-distance-cutoff" else ""} \
      ~{if (linear_distance_cut_off) then "--linear-distance-cutoff" else ""} \
      ~{if (cmd_list_submit_file) then "--cmd-list-submit-file" else ""} \
      ~{if (hold) then "--hold" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir: "Output directory of proximity files"
    pdb_file_dir: "PDB file directory"
    measure: "Distance measure between residues (shortest or average)"
    parallel: "Parallelization to use (bsub, local, or none)\\nuse bsub if you want to use an LSF server\\nuse local if you want to use your CPU (CAUTION: make sure you know your max CPU processes)\\nuse none if you want to run calpro for each protein serially"
    max_processes: "Set if using parallel type local (CAUTION: make sure you know your max CPU processes)"
    gene_file: "File with HUGO gene names in the first column (like a .maf)"
    three_d_distance_cut_off: "Maximum 3D distance (<= Angstroms), defaul: 100"
    linear_distance_cut_off: "Minimum linear distance (> peptides), default: 0"
    cmd_list_submit_file: "Batch jobs file to run calpro step in parallel, default: cmd_list_submit_file"
    hold: "Do not submit batch jobs, just write cmd_list_submit_file, default: submits (takes no input)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}