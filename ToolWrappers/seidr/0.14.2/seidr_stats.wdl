version 1.0

task SeidrStats {
  input {
    File? in_file
    Boolean? arg_index_use
    Boolean? arg_use_n
    Boolean? arg_prclobtwstrevktzlpcsecebcstring_describing
    Boolean? experimental_use_directionality
    Boolean? weight_is_distance
    Boolean? weight_rank
    Boolean? arg_auto_directory
    String information_dot
    String tolerance
    String score
  }
  command <<<
    seidr stats \
      ~{information_dot} \
      ~{tolerance} \
      ~{score} \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if (arg_index_use) then "-i" else ""} \
      ~{if (arg_use_n) then "-n" else ""} \
      ~{if (arg_prclobtwstrevktzlpcsecebcstring_describing) then "-m" else ""} \
      ~{if (experimental_use_directionality) then "-d" else ""} \
      ~{if (weight_is_distance) then "--weight-is-distance" else ""} \
      ~{if (weight_rank) then "--weight-rank" else ""} \
      ~{if (arg_auto_directory) then "-T" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    in_file: "Input SeidrFile [can be positional]"
    arg_index_use: "[ --index ] arg (=last score)      Index of score to use"
    arg_use_n: "[ --nsamples ] arg (=0)            Use N samples for approximations"
    arg_prclobtwstrevktzlpcsecebcstring_describing: "[ --metrics ] arg (=PR,CLO,BTW,STR,EV,KTZ,LPC,SEC,EBC)\\nString describing metrics to calculate"
    experimental_use_directionality: "[ --directed ]                     (Experimental) Use directionality"
    weight_is_distance: "Edge weight represents a distance\\n(rather than similarity)."
    weight_rank: "Set weight value to rank rather than"
    arg_auto_directory: "[ --tempdir ] arg (=auto)          Directory to store temporary data"
    information_dot: "--eigenvector-tol arg (=1e-08)        Eigenvector centrality convergence "
    tolerance: "-e [ --exact ]                        Calculate exact stats."
    score: "Common Options:"
  }
  output {
    File out_stdout = stdout()
  }
}