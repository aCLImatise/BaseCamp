version 1.0

task CentroidAlifold {
  input {
    Boolean? arg_specify_default
    Boolean? arg_mixture_weights
    Boolean? arg_weight_base
    Boolean? arg_thereshold_base
    Int? ea
    Int? max_mcc
    Boolean? me_a
    Boolean? noncanonical
    Boolean? use_structure_constraints
    File? arg_specify_filename
    String? posteriors
    File? posteriors_output
    String? postscript
    File? params
    Boolean? arg_maximum_distance
    Boolean? arg_specify_number
    Boolean? arg_maximum_number
    Int? seed
    String seq
  }
  command <<<
    centroid_alifold \
      ~{seq} \
      ~{if (arg_specify_default) then "-e" else ""} \
      ~{if (arg_mixture_weights) then "-w" else ""} \
      ~{if (arg_weight_base) then "-g" else ""} \
      ~{if (arg_thereshold_base) then "-t" else ""} \
      ~{if defined(ea) then ("--ea " +  '"' + ea + '"') else ""} \
      ~{if defined(max_mcc) then ("--max-mcc " +  '"' + max_mcc + '"') else ""} \
      ~{if (me_a) then "--mea" else ""} \
      ~{if (noncanonical) then "--noncanonical" else ""} \
      ~{if (use_structure_constraints) then "-C" else ""} \
      ~{if (arg_specify_filename) then "-o" else ""} \
      ~{if defined(posteriors) then ("--posteriors " +  '"' + posteriors + '"') else ""} \
      ~{if defined(posteriors_output) then ("--posteriors-output " +  '"' + posteriors_output + '"') else ""} \
      ~{if defined(postscript) then ("--postscript " +  '"' + postscript + '"') else ""} \
      ~{if defined(params) then ("--params " +  '"' + params + '"') else ""} \
      ~{if (arg_maximum_distance) then "-d" else ""} \
      ~{if (arg_specify_number) then "-s" else ""} \
      ~{if (arg_maximum_number) then "-c" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    arg_specify_default: "[ --engine ] arg     specify the inference engine (default: \\\"McCaskill &\\nAlifold\\\")"
    arg_mixture_weights: "[ --mixture ] arg    mixture weights of inference engines"
    arg_weight_base: "[ --gamma ] arg      weight of base pairs"
    arg_thereshold_base: "[ --threshold ] arg  thereshold of base pairs (this option overwrites\\n'gamma')"
    ea: "compute (pseudo-)expected accuracy (pseudo if arg==0,\\nsampling if arg>0; arg: # of sampling)"
    max_mcc: "predict secondary structure by maximizing\\npseudo-expected MCC (arg: # of sampling)"
    me_a: "run as an MEA estimator"
    noncanonical: "allow non-canonical base-pairs"
    use_structure_constraints: "[ --constraints ]    use structure constraints"
    arg_specify_filename: "[ --output ] arg     specify filename to output predicted secondary\\nstructures. If empty, use the standard output."
    posteriors: "output base-pairing probability matrices which\\ncontain base-pairing probabilities more than the\\ngiven value."
    posteriors_output: "specify filename to output base-pairing probability\\nmatrices. If empty, use the standard output."
    postscript: "draw predicted secondary structures with the\\npostscript (PS) format"
    params: "use the parameter file"
    arg_maximum_distance: "[ --max-dist ] arg (=0) the maximum distance of base-pairs"
    arg_specify_number: "[ --sampling ] arg           specify the number of samples to be generated\\nfor each sequence"
    arg_maximum_number: "[ --max-clusters ] arg (=10) the maximum number of clusters for the\\nstochastic sampling algorithm"
    seed: "(=0)                 specify the seed for the random number\\ngenerator (set this automatically if seed=0)\\n"
    seq: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_specify_filename = "${in_arg_specify_filename}"
    File out_posteriors_output = "${in_posteriors_output}"
  }
}