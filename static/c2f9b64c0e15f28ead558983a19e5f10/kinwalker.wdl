version 1.0

task Kinwalker {
  input {
    Boolean? in_it_structure
    Boolean? interrupt
    Boolean? print_front_dot
    Boolean? barrier_heuristic
    Boolean? dangle
    Boolean? grouping
    Boolean? look_ahead
    Boolean? max_keep
    Boolean? no_lonely
    Boolean? transcribed
    Boolean? transcription_rate
    Boolean? window_size
    String seq_file
    String outfile
  }
  command <<<
    kinwalker \
      ~{seq_file} \
      ~{outfile} \
      ~{if (in_it_structure) then "--init_structure" else ""} \
      ~{if (interrupt) then "--interrupt" else ""} \
      ~{if (print_front_dot) then "--printfront." else ""} \
      ~{if (barrier_heuristic) then "--barrier_heuristic" else ""} \
      ~{if (dangle) then "--dangle" else ""} \
      ~{if (grouping) then "--grouping" else ""} \
      ~{if (look_ahead) then "--lookahead" else ""} \
      ~{if (max_keep) then "--maxkeep" else ""} \
      ~{if (no_lonely) then "--nolonely" else ""} \
      ~{if (transcribed) then "--transcribed" else ""} \
      ~{if (transcription_rate) then "--transcription_rate" else ""} \
      ~{if (window_size) then "--windowsize" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0"
  }
  parameter_meta {
    in_it_structure: "Start with a structure other than the open chain."
    interrupt: "Allow interrupted folding trajectories when the barrier is exceeded."
    print_front_dot: "Creates PS plots of front progression with index i, named front_trajectory($i).ps.\\n-t, --test          Use test sequence.\\n-v, --verbose       Verbose mode. Print debugging messages about program progress."
    barrier_heuristic: "'M' Morgan-Higgs,'S' limits small stacks,'B' Barriers,'A' all, then take minimum. Default: >M<"
    dangle: "Dangle value of 0,1,2 as in the ViennaRNA package. Default: >0<"
    grouping: "How barrier_heuristic 'M' treats conflict groups(\\\"standard\\\" or \\\"regroup\\\"). Default: >standard<"
    look_ahead: "#BP that MorganHiggs forms its subpaths from. Default: >1<"
    max_keep: "Breadth of breadth first seerch in barrier_heuristic='B'. Default: >1<"
    no_lonely: "Value of noLonelyPairs as in ViennaRNA. Default: >2<"
    transcribed: "#bases initially transcribed, <0 means all is transcribed. Default: >1<)"
    transcription_rate: "#bases transcribed per second. Default: >200.000000<)"
    window_size: "Max size of substructures considered for folding events during transcription, 0= all are considered. Default: >0<)"
    seq_file: ""
    outfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}