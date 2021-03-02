version 1.0

task MirMachinepy {
  input {
    String? node
    String? species
    File? genome
    String? model
    Int? cpu
    Boolean? add_all_nodes
    Boolean? dry
    Boolean? print_all_nodes
  }
  command <<<
    MirMachine_py \
      ~{if defined(node) then ("--node " +  '"' + node + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (add_all_nodes) then "--add-all-nodes" else ""} \
      ~{if (dry) then "--dry" else ""} \
      ~{if (print_all_nodes) then "--print-all-nodes" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirmachine:0.1.2--py_0"
  }
  parameter_meta {
    node: "Node name. (e.g. Caenorhabditis)"
    species: "Species name. (e.g. Caenorhabditis_elegans)"
    genome: "Genome fasta file location (e.g. data/genome/example.fasta)"
    model: "Model type: deutero, proto, combined [default: proto]"
    cpu: "CPUs. [default: 2]"
    add_all_nodes: "Move on the tree both ways."
    dry: "Dry run."
    print_all_nodes: "Print all available nodes and exit."
  }
  output {
    File out_stdout = stdout()
  }
}