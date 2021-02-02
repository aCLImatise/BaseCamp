version 1.0

task DeepModpyDetect {
  input {
    String? ref
    String? pred_det
    File? pred_path
    File? mod_file
    Int? fnum
    Int? hidden
    Int? base_call_one_d
    Int? base_call_two_strand
    Int? region
    String? con_un_k
    Boolean? output_layer
    String? base
    String? mod_cluster
    String? out_level
    Directory? wrk_base
    String? fileid
    Directory? out_folder
    String? recursive
    Int? threads
    Int? files_per_thread
    Int? window_size
    String? align_str
    String? signal_group
    Boolean? move
  }
  command <<<
    DeepMod_py detect \
      ~{if defined(ref) then ("--Ref " +  '"' + ref + '"') else ""} \
      ~{if defined(pred_det) then ("--predDet " +  '"' + pred_det + '"') else ""} \
      ~{if defined(pred_path) then ("--predpath " +  '"' + pred_path + '"') else ""} \
      ~{if defined(mod_file) then ("--modfile " +  '"' + mod_file + '"') else ""} \
      ~{if defined(fnum) then ("--fnum " +  '"' + fnum + '"') else ""} \
      ~{if defined(hidden) then ("--hidden " +  '"' + hidden + '"') else ""} \
      ~{if defined(base_call_one_d) then ("--basecall_1d " +  '"' + base_call_one_d + '"') else ""} \
      ~{if defined(base_call_two_strand) then ("--basecall_2strand " +  '"' + base_call_two_strand + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(con_un_k) then ("--ConUnk " +  '"' + con_un_k + '"') else ""} \
      ~{if (output_layer) then "--outputlayer" else ""} \
      ~{if defined(base) then ("--Base " +  '"' + base + '"') else ""} \
      ~{if defined(mod_cluster) then ("--mod_cluster " +  '"' + mod_cluster + '"') else ""} \
      ~{if defined(out_level) then ("--outLevel " +  '"' + out_level + '"') else ""} \
      ~{if defined(wrk_base) then ("--wrkBase " +  '"' + wrk_base + '"') else ""} \
      ~{if defined(fileid) then ("--FileID " +  '"' + fileid + '"') else ""} \
      ~{if defined(out_folder) then ("--outFolder " +  '"' + out_folder + '"') else ""} \
      ~{if defined(recursive) then ("--recursive " +  '"' + recursive + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(files_per_thread) then ("--files_per_thread " +  '"' + files_per_thread + '"') else ""} \
      ~{if defined(window_size) then ("--windowsize " +  '"' + window_size + '"') else ""} \
      ~{if defined(align_str) then ("--alignStr " +  '"' + align_str + '"') else ""} \
      ~{if defined(signal_group) then ("--SignalGroup " +  '"' + signal_group + '"') else ""} \
      ~{if (move) then "--move" else ""}
  >>>
  parameter_meta {
    ref: "The reference sequence"
    pred_det: "pred first and then detect (1) or only detect (0). Default: 1"
    pred_path: "The file path of predictions for each fast5 file. The file pattern is *_*.detail. Default: './mod_output/pred2/'"
    mod_file: "The path to load training model. Default: 'mod_output/'"
    fnum: "The number of features. Default: 7"
    hidden: "The number of hidden node. Default: 100"
    base_call_one_d: "Path for basecall_1d. Default: Basecall_1D_000"
    base_call_two_strand: "Path for basecall_2strand. Default: BaseCalled_template"
    region: "The region of interest: for example, chr:1:100000;chr2:10000"
    con_un_k: "Whether contain unknown chromosome"
    output_layer: "{,sigmoid}\\nhow to put activation function for output layer"
    base: "Interest of bases"
    mod_cluster: "1: CpG cluster effect; 0: not"
    out_level: "The level for output: 0 for DEBUG, 1 for INFO, 2 for WARNING, 3 for ERROR. Default: 2"
    wrk_base: "The base folder for FAST5 files."
    fileid: "The unique string for intermediate files and final output files. Default: 'mod'"
    out_folder: "The default folder for outputing the results. Default: ./mod_output"
    recursive: "Recurise to find fast5 files. Default:1"
    threads: "The number of threads used (not for train). Default:4"
    files_per_thread: "The number of fast5 files for each thread (not for train). Default:500"
    window_size: "The window size to extract features. Default: 21"
    align_str: "Alignment tools (bwa or minimap2 is supported). Default: minimap2"
    signal_group: "How to associate signals to each called bases. Default: simple"
    move: "Whether the basecalled data use move tables instead of event tables. Default: False"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_folder = "${in_out_folder}"
  }
}