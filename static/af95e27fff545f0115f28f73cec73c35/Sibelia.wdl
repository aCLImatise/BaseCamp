version 1.0

task Sibelia {
  input {
    String? _parameters_parameters
    File? _stagefile_file
    Directory? _outdir_dir
    Boolean? no_blocks
    Boolean? _inramperform_create
    Boolean? _sharedonlyoutput_blocks
    Int? _minblocksize_size
    Boolean? _sequencesfileoutput_sequences
    Boolean? _graphfileoutput_resulting
    Boolean? _visualizedraw_circos
    Directory? _tempdir_dir
    Int? last_k
    Boolean? all_stages
    Boolean? gff
    Boolean? no_post_process
    Boolean? correct_boundaries
    Int? _maxiterations_integer
    String sibel_i_a
  }
  command <<<
    Sibelia \
      ~{sibel_i_a} \
      ~{if defined(_parameters_parameters) then ("-s " +  '"' + _parameters_parameters + '"') else ""} \
      ~{if defined(_stagefile_file) then ("-k " +  '"' + _stagefile_file + '"') else ""} \
      ~{if defined(_outdir_dir) then ("-o " +  '"' + _outdir_dir + '"') else ""} \
      ~{if (no_blocks) then "--noblocks" else ""} \
      ~{if (_inramperform_create) then "-r" else ""} \
      ~{if (_sharedonlyoutput_blocks) then "-a" else ""} \
      ~{if defined(_minblocksize_size) then ("-m " +  '"' + _minblocksize_size + '"') else ""} \
      ~{if (_sequencesfileoutput_sequences) then "-q" else ""} \
      ~{if (_graphfileoutput_resulting) then "-g" else ""} \
      ~{if (_visualizedraw_circos) then "-v" else ""} \
      ~{if defined(_tempdir_dir) then ("-t " +  '"' + _tempdir_dir + '"') else ""} \
      ~{if defined(last_k) then ("--lastk " +  '"' + last_k + '"') else ""} \
      ~{if (all_stages) then "--allstages" else ""} \
      ~{if (gff) then "--gff" else ""} \
      ~{if (no_post_process) then "--nopostprocess" else ""} \
      ~{if (correct_boundaries) then "--correctboundaries" else ""} \
      ~{if defined(_maxiterations_integer) then ("-i " +  '"' + _maxiterations_integer + '"') else ""}
  >>>
  parameter_meta {
    _parameters_parameters: ",  --parameters <loose|fine|far>\\n(OR required)  Parameters set, used for the simplification. Option\\n\\\"loose\\\" produces fewer blocks, but they are larger (\\\"fine\\\" is\\nopposite).\\n-- OR --"
    _stagefile_file: ",  --stagefile <file name>\\n(OR required)  File that contains manually chosen simplifications\\nparameters. See USAGE file for more information."
    _outdir_dir: ",  --outdir <dir name>\\nDirectory where output files are written"
    no_blocks: "Do not compute synteny blocks"
    _inramperform_create: ",  --inram\\nPerform all computations in RAM, don't create temp files."
    _sharedonlyoutput_blocks: ",  --sharedonly\\nOutput only blocks that occur exactly once in each input sequence."
    _minblocksize_size: ",  --minblocksize <integer>\\nMinimum size of a synteny block, default value = 5000 BP."
    _sequencesfileoutput_sequences: ",  --sequencesfile\\nOutput sequences of synteny blocks (FASTA format)."
    _graphfileoutput_resulting: ",  --graphfile\\nOutput resulting condensed de Bruijn graph (in dot format)."
    _visualizedraw_circos: ",  --visualize\\nDraw circos diagram with blocks at different stages."
    _tempdir_dir: ",  --tempdir <dir name>\\nDirectory where temporary files are stored."
    last_k: "1>\\nValue of K used for the synteny blocks inferring."
    all_stages: "Output coordinates of synteny blocks from all stages"
    gff: "Use GFF format for reporting blocks coordinates"
    no_post_process: "Do not perform postprocessing (stripe gluing)."
    correct_boundaries: "Correct boundaries of unique synteny blocks."
    _maxiterations_integer: "0>,  --maxiterations <integer > 0>\\nMaximum number of iterations during a stage of simplification, default\\n= 4."
    sibel_i_a: "{-s <loose|fine|far>|-k <file name>} [-o <dir name>]\\n[--noblocks] [-r] [-a] [-m <integer>] [-q] [-g] [-v] [-t <dir\\nname>] [--lastk <integer > 1>] [--allstages] [--gff]\\n[--nopostprocess] [--correctboundaries] [-i <integer > 0>] [--]\\n[--version] [-h] <fasta files with genomes> ..."
  }
  output {
    File out_stdout = stdout()
    Directory out__outdir_dir = "${in__outdir_dir}"
  }
}