version 1.0

task Swiftlink {
  input {
    File? pedigree
    File? var_map
    File? dat
    String? default_
    Int? _iterationsnum_default
    Int? _burninnum_default
    Int? _sequentialimputationnum_default
    Int? _scoringperiodnum_default
    Float? _lsamplerprobabilityfloat_default
    Int? _lodscoresnum_default
    Int? _runsnum_default
    Boolean? __trace
    String? _traceprefixprefix_default
    Boolean? _elod
    Float? _frequencyfloat_default
    Float? _separationfloat_default
    Float? floatfloat__penetrancefloatfloatfloatdefault
    Int? _replicatesnum_default
    Int? _coresnum_default
    Boolean? __gpu
    Boolean? __sexlinked
    Boolean? __affectedonly
    Int? _peelseqiternum_default
    File? random_seeds
    Boolean? __verbose
  }
  command <<<
    swiftlink \
      ~{if defined(pedigree) then ("--pedigree " +  '"' + pedigree + '"') else ""} \
      ~{if defined(var_map) then ("--map " +  '"' + var_map + '"') else ""} \
      ~{if defined(dat) then ("--dat " +  '"' + dat + '"') else ""} \
      ~{if defined(default_) then ("--output " +  '"' + default_ + '"') else ""} \
      ~{if defined(_iterationsnum_default) then ("-i " +  '"' + _iterationsnum_default + '"') else ""} \
      ~{if defined(_burninnum_default) then ("-b " +  '"' + _burninnum_default + '"') else ""} \
      ~{if defined(_sequentialimputationnum_default) then ("-s " +  '"' + _sequentialimputationnum_default + '"') else ""} \
      ~{if defined(_scoringperiodnum_default) then ("-x " +  '"' + _scoringperiodnum_default + '"') else ""} \
      ~{if defined(_lsamplerprobabilityfloat_default) then ("-l " +  '"' + _lsamplerprobabilityfloat_default + '"') else ""} \
      ~{if defined(_lodscoresnum_default) then ("-n " +  '"' + _lodscoresnum_default + '"') else ""} \
      ~{if defined(_runsnum_default) then ("-R " +  '"' + _runsnum_default + '"') else ""} \
      ~{if (__trace) then "-T" else ""} \
      ~{if defined(_traceprefixprefix_default) then ("-P " +  '"' + _traceprefixprefix_default + '"') else ""} \
      ~{if (_elod) then "-e" else ""} \
      ~{if defined(_frequencyfloat_default) then ("-f " +  '"' + _frequencyfloat_default + '"') else ""} \
      ~{if defined(_separationfloat_default) then ("-w " +  '"' + _separationfloat_default + '"') else ""} \
      ~{if defined(floatfloat__penetrancefloatfloatfloatdefault) then ("-k " +  '"' + floatfloat__penetrancefloatfloatfloatdefault + '"') else ""} \
      ~{if defined(_replicatesnum_default) then ("-u " +  '"' + _replicatesnum_default + '"') else ""} \
      ~{if defined(_coresnum_default) then ("-c " +  '"' + _coresnum_default + '"') else ""} \
      ~{if (__gpu) then "-g" else ""} \
      ~{if (__sexlinked) then "-X" else ""} \
      ~{if (__affectedonly) then "-a" else ""} \
      ~{if defined(_peelseqiternum_default) then ("-q " +  '"' + _peelseqiternum_default + '"') else ""} \
      ~{if defined(random_seeds) then ("--randomseeds " +  '"' + random_seeds + '"') else ""} \
      ~{if (__verbose) then "-v" else ""}
  >>>
  parameter_meta {
    pedigree: ""
    var_map: ""
    dat: ""
    default_: "(default = 'swiftlink.out')"
    _iterationsnum_default: ",     --iterations=NUM            (default = 50000)"
    _burninnum_default: ",     --burnin=NUM                (default = 50000)"
    _sequentialimputationnum_default: ",     --sequentialimputation=NUM  (default = 1000)"
    _scoringperiodnum_default: ",     --scoringperiod=NUM         (default = 10)"
    _lsamplerprobabilityfloat_default: ",   --lsamplerprobability=FLOAT (default = 0.5)"
    _lodscoresnum_default: ",     --lodscores=NUM             (default = 5)"
    _runsnum_default: ",     --runs=NUM                  (default = 1)"
    __trace: ",         --trace"
    _traceprefixprefix_default: ",  --traceprefix=PREFIX        (default = 'trace')"
    _elod: "--elod"
    _frequencyfloat_default: "--frequency=FLOAT           (default = 1.0e-04)"
    _separationfloat_default: "--separation=FLOAT          (default = 0.0500)"
    floatfloat__penetrancefloatfloatfloatdefault: ",FLOAT,FLOAT --penetrance=FLOAT,FLOAT,FLOAT(default = 0.00,0.00,1.00)"
    _replicatesnum_default: "--replicates=NUM            (default = 1000000)"
    _coresnum_default: ",     --cores=NUM                 (default = 1)"
    __gpu: ",         --gpu                       [UNAVAILABLE, COMPILED WITHOUT CUDA]"
    __sexlinked: ",         --sexlinked"
    __affectedonly: ",         --affectedonly"
    _peelseqiternum_default: ",     --peelseqiter=NUM           (default = 1000000)"
    random_seeds: ""
    __verbose: ",         --verbose"
  }
  output {
    File out_stdout = stdout()
  }
}