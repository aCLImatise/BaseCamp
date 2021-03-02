version 1.0

task Beast {
  input {
    String? window
    String? options
    File? working
    Int? seed
    String? prefix
    File? state_file
    String? overwrite
    String? resume
    String? validate
    Int? errors
    Int? threads
    String? java
    String? noerr
    String? loglevel
    Int? instances
    String? beagle
    String? beagle_info
    String? beagle_order
    String? beagle_cpu
    String? beagle_gpu
    String? beagle_sse
    String? beagle_single
    String? beagle_double
    String? beagle_scaling
    String? version
    String? strict_versions
    Int? pairs_replaced_xml
    File? df
    File? df_out
    String? sample_from_prior
    File? input_file_name
  }
  command <<<
    beast \
      ~{input_file_name} \
      ~{if defined(window) then ("-window " +  '"' + window + '"') else ""} \
      ~{if defined(options) then ("-options " +  '"' + options + '"') else ""} \
      ~{if defined(working) then ("-working " +  '"' + working + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(state_file) then ("-statefile " +  '"' + state_file + '"') else ""} \
      ~{if defined(overwrite) then ("-overwrite " +  '"' + overwrite + '"') else ""} \
      ~{if defined(resume) then ("-resume " +  '"' + resume + '"') else ""} \
      ~{if defined(validate) then ("-validate " +  '"' + validate + '"') else ""} \
      ~{if defined(errors) then ("-errors " +  '"' + errors + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(java) then ("-java " +  '"' + java + '"') else ""} \
      ~{if defined(noerr) then ("-noerr " +  '"' + noerr + '"') else ""} \
      ~{if defined(loglevel) then ("-loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(instances) then ("-instances " +  '"' + instances + '"') else ""} \
      ~{if defined(beagle) then ("-beagle " +  '"' + beagle + '"') else ""} \
      ~{if defined(beagle_info) then ("-beagle_info " +  '"' + beagle_info + '"') else ""} \
      ~{if defined(beagle_order) then ("-beagle_order " +  '"' + beagle_order + '"') else ""} \
      ~{if defined(beagle_cpu) then ("-beagle_CPU " +  '"' + beagle_cpu + '"') else ""} \
      ~{if defined(beagle_gpu) then ("-beagle_GPU " +  '"' + beagle_gpu + '"') else ""} \
      ~{if defined(beagle_sse) then ("-beagle_SSE " +  '"' + beagle_sse + '"') else ""} \
      ~{if defined(beagle_single) then ("-beagle_single " +  '"' + beagle_single + '"') else ""} \
      ~{if defined(beagle_double) then ("-beagle_double " +  '"' + beagle_double + '"') else ""} \
      ~{if defined(beagle_scaling) then ("-beagle_scaling " +  '"' + beagle_scaling + '"') else ""} \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""} \
      ~{if defined(strict_versions) then ("-strictversions " +  '"' + strict_versions + '"') else ""} \
      ~{if defined(pairs_replaced_xml) then ("-D " +  '"' + pairs_replaced_xml + '"') else ""} \
      ~{if defined(df) then ("-DF " +  '"' + df + '"') else ""} \
      ~{if defined(df_out) then ("-DFout " +  '"' + df_out + '"') else ""} \
      ~{if defined(sample_from_prior) then ("-sampleFromPrior " +  '"' + sample_from_prior + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/beast2:2.6.3--hf1b8bbb_0"
  }
  parameter_meta {
    window: "a console window"
    options: "an options dialog"
    working: "working directory to input file's directory"
    seed: "a random number generator seed"
    prefix: "a prefix for all output log filenames"
    state_file: "the filename for storing/restoring the state"
    overwrite: "overwriting of log files"
    resume: "appending of log files"
    validate: "the XML, but do not run -- useful for debugging XML"
    errors: "maximum number of numerical errors before stopping"
    threads: "number of computational threads to use (default 1), -1 for number of cores"
    java: "Java only, no native implementations"
    noerr: "all output to standard error"
    loglevel: ",warning,info,debug,trace"
    instances: "site patterns amongst number of threads (use with -threads option)"
    beagle: "beagle library if available"
    beagle_info: ": show information on available resources"
    beagle_order: ": set order of resource use"
    beagle_cpu: ": use CPU instance"
    beagle_gpu: ": use GPU instance if available"
    beagle_sse: ": use SSE extensions if available"
    beagle_single: ": use single precision if available"
    beagle_double: ": use double precision if available"
    beagle_scaling: ": specify scaling scheme to use"
    version: "version and stop"
    strict_versions: "only package versions as specified in the 'required' attribute"
    pairs_replaced_xml: "pairs to be replaced in the XML, e.g., -D \\\"arg1=10,arg2=20\\\""
    df: ", but attribute-value pairs defined in file in JSON format"
    df_out: "XML file written when -DF option is used"
    sample_from_prior: "from prior for MCMC analysis (by adding sampleFromPrior=\\\"true\\\" in the first run element)"
    input_file_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}