version 1.0

task AlignRecordspyAcross {
  input {
    Array[String] list_tab_defaultnone
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    File? log
    Boolean? failed
    String? format
    Int? nproc
    Array[String] sf
    Array[String] gf
    String? calls
    String? mode
    String? act
    String? exec
  }
  command <<<
    AlignRecords_py across \
      ~{if defined(list_tab_defaultnone) then ("-d " +  '"' + list_tab_defaultnone + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(sf) then ("--sf " +  '"' + sf + '"') else ""} \
      ~{if defined(gf) then ("--gf " +  '"' + gf + '"') else ""} \
      ~{if defined(calls) then ("--calls " +  '"' + calls + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(act) then ("--act " +  '"' + act + '"') else ""} \
      ~{if defined(exec) then ("--exec " +  '"' + exec + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_tab_defaultnone: "A list of tab delimited database files. (default:\\nNone)"
    explicit_output_file: "Explicit output file name. Note, this argument cannot\\nbe used with the --failed, --outdir, or --outname\\narguments. If unspecified, then the output filename\\nwill be based on the input filename(s). (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    format: "Specify input and output format. (default: airr)"
    nproc: "The number of simultaneous computational processes to\\nexecute (CPU cores to utilized). (default: 8)"
    sf: "The sequence fields to multiple align within each\\ngroup. (default: None)"
    gf: "Additional (not allele call) fields to use for\\ngrouping. (default: None)"
    calls: "[{v,d,j} ...]\\nSegment calls (allele assignments) to use for\\ngrouping. (default: ['v', 'j'])"
    mode: "Specifies whether to use the V(D)J allele or gene when\\nan allele call field (--calls) is specified. (default:\\ngene)"
    act: "Specifies how to handle multiple values within default\\nallele call fields. Currently, only \\\"first\\\" is\\nsupported. (default: first)"
    exec: "The location of the MUSCLE executable (default:\\nmuscle)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}