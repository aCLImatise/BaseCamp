version 1.0

task GenometreetkBootstrap {
  input {
    Directory? boot_dir
    String? base_type
    String? model
    Boolean? gamma
    Int? num_replicates
    Float? fraction
    Int? cpus
    Boolean? silent
    String input_tree
    String msa_file
    String output_dir
  }
  command <<<
    genometreetk bootstrap \
      ~{input_tree} \
      ~{msa_file} \
      ~{output_dir} \
      ~{if defined(boot_dir) then ("--boot_dir " +  '"' + boot_dir + '"') else ""} \
      ~{if defined(base_type) then ("--base_type " +  '"' + base_type + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if (gamma) then "--gamma" else ""} \
      ~{if defined(num_replicates) then ("--num_replicates " +  '"' + num_replicates + '"') else ""} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    boot_dir: "directory containing pre-computed bootstrap trees\\n(must have '.tree', '.tre', or '.treefile' extension)"
    base_type: "indicates if bases are nucleotides or amino acids\\n(default: prot)"
    model: "model of evolution to use (default: wag)"
    gamma: "indicates that the GAMMA model should be used"
    num_replicates: "number of bootstrap replicates to perform (default:\\n100)"
    fraction: "fraction of alignment to subsample (default: 1.0)"
    cpus: "number of cpus (default: 1)"
    silent: "suppress output"
    input_tree: "tree inferred from original data"
    msa_file: "file containing multiple sequence alignment (or 'NONE'\\nif '--boot_dir' is given)"
    output_dir: "output directory"
  }
  output {
    File out_stdout = stdout()
  }
}