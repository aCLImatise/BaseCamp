version 1.0

task Sibelia {
  input {
    String? parameters
    File? stage_file
    Directory? outdir
    Boolean? no_blocks
    Boolean? in_ram
    Boolean? shared_only
    Int? min_block_size
    Boolean? sequences_file
    Boolean? graph_file
    Boolean? visualize
    Directory? tempdir
    Int? last_k
    Boolean? all_stages
    Boolean? gff
    Boolean? no_post_process
    Boolean? correct_boundaries
    Int? _maxiterations_integer
  }
  command <<<
    Sibelia \
      ~{if defined(parameters) then ("--parameters " +  '"' + parameters + '"') else ""} \
      ~{if defined(stage_file) then ("--stagefile " +  '"' + stage_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (no_blocks) then "--noblocks" else ""} \
      ~{if (in_ram) then "--inram" else ""} \
      ~{if (shared_only) then "--sharedonly" else ""} \
      ~{if defined(min_block_size) then ("--minblocksize " +  '"' + min_block_size + '"') else ""} \
      ~{if (sequences_file) then "--sequencesfile" else ""} \
      ~{if (graph_file) then "--graphfile" else ""} \
      ~{if (visualize) then "--visualize" else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if defined(last_k) then ("--lastk " +  '"' + last_k + '"') else ""} \
      ~{if (all_stages) then "--allstages" else ""} \
      ~{if (gff) then "--gff" else ""} \
      ~{if (no_post_process) then "--nopostprocess" else ""} \
      ~{if (correct_boundaries) then "--correctboundaries" else ""} \
      ~{if defined(_maxiterations_integer) then ("-i " +  '"' + _maxiterations_integer + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    parameters: "(OR required)  Parameters set, used for the simplification. Option\\n\\\"loose\\\" produces fewer blocks, but they are larger (\\\"fine\\\" is\\nopposite).\\n-- OR --"
    stage_file: "(OR required)  File that contains manually chosen simplifications\\nparameters. See USAGE file for more information."
    outdir: "Directory where output files are written"
    no_blocks: "Do not compute synteny blocks"
    in_ram: "Perform all computations in RAM, don't create temp files."
    shared_only: "Output only blocks that occur exactly once in each input sequence."
    min_block_size: "Minimum size of a synteny block, default value = 5000 BP."
    sequences_file: "Output sequences of synteny blocks (FASTA format)."
    graph_file: "Output resulting condensed de Bruijn graph (in dot format)."
    visualize: "Draw circos diagram with blocks at different stages."
    tempdir: "Directory where temporary files are stored."
    last_k: "1>\\nValue of K used for the synteny blocks inferring."
    all_stages: "Output coordinates of synteny blocks from all stages"
    gff: "Use GFF format for reporting blocks coordinates"
    no_post_process: "Do not perform postprocessing (stripe gluing)."
    correct_boundaries: "Correct boundaries of unique synteny blocks."
    _maxiterations_integer: "0>,  --maxiterations <integer > 0>\\nMaximum number of iterations during a stage of simplification, default\\n= 4."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}