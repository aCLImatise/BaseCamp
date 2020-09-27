version 1.0

task DefineClonespy {
  input {
    Array[String] list_tab_defaultnone
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    File? log
    Boolean? failed
    String? format
    Int? nproc
    String? sf
    String? vf
    String? jf
    Array[String] gf
    String? mode
    String? act
    String? model
    Float? dist
    String? norm
    String? sym
    String? link
    Int? max_miss
    String clone_pass
    String clone_fail
  }
  command <<<
    DefineClones_py \
      ~{clone_pass} \
      ~{clone_fail} \
      ~{if defined(list_tab_defaultnone) then ("-d " +  '"' + list_tab_defaultnone + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(sf) then ("--sf " +  '"' + sf + '"') else ""} \
      ~{if defined(vf) then ("--vf " +  '"' + vf + '"') else ""} \
      ~{if defined(jf) then ("--jf " +  '"' + jf + '"') else ""} \
      ~{if defined(gf) then ("--gf " +  '"' + gf + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(act) then ("--act " +  '"' + act + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""} \
      ~{if defined(norm) then ("--norm " +  '"' + norm + '"') else ""} \
      ~{if defined(sym) then ("--sym " +  '"' + sym + '"') else ""} \
      ~{if defined(link) then ("--link " +  '"' + link + '"') else ""} \
      ~{if defined(max_miss) then ("--maxmiss " +  '"' + max_miss + '"') else ""}
  >>>
  parameter_meta {
    list_tab_defaultnone: "A list of tab delimited database files. (default:\\nNone)"
    explicit_output_file: "Explicit output file name. Note, this argument cannot\\nbe used with the --failed, --outdir, or --outname\\narguments. If unspecified, then the output filename\\nwill be based on the input filename(s). (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    format: "Specify input and output format. (default: airr)"
    nproc: "The number of simultaneous computational processes to\\nexecute (CPU cores to utilized). (default: 8)"
    sf: "Field to be used to calculate distance between\\nrecords. Defaults to junction (airr) or JUNCTION\\n(changeo). (default: None)"
    vf: "Field containing the germline V segment call. Defaults\\nto v_call (airr) or V_CALL (changeo). (default: None)"
    jf: "Field containing the germline J segment call. Defaults\\nto j_call (airr) or J_CALL (changeo). (default: None)"
    gf: "Additional fields to use for grouping clones aside\\nfrom V, J and junction length. (default: None)"
    mode: "Specifies whether to use the V(D)J allele or gene for\\ninitial grouping. (default: gene)"
    act: "Specifies how to handle multiple V(D)J assignments for\\ninitial grouping. The \\\"first\\\" action will use only the\\nfirst gene listed. The \\\"set\\\" action will use all gene\\nassignments and construct a larger gene grouping\\ncomposed of any sequences sharing an assignment or\\nlinked to another sequence by a common assignment\\n(similar to single-linkage). (default: set)"
    model: "Specifies which substitution model to use for\\ncalculating distance between sequences. The \\\"ham\\\"\\nmodel is nucleotide Hamming distance and \\\"aa\\\" is amino\\nacid Hamming distance. The \\\"hh_s1f\\\" and \\\"hh_s5f\\\"\\nmodels are human specific single nucleotide and 5-mer\\ncontent models, respectively, from Yaari et al, 2013.\\nThe \\\"mk_rs1nf\\\" and \\\"mk_rs5nf\\\" models are mouse\\nspecific single nucleotide and 5-mer content models,\\nrespectively, from Cui et al, 2016. The \\\"m1n_compat\\\"\\nand \\\"hs1f_compat\\\" models are deprecated models\\nprovided backwards compatibility with the \\\"m1n\\\" and\\n\\\"hs1f\\\" models in Change-O v0.3.3 and SHazaM v0.1.4.\\nBoth 5-mer models should be considered experimental.\\n(default: ham)"
    dist: "The distance threshold for clonal grouping (default:\\n0.0)"
    norm: "Specifies how to normalize distances. One of none (do\\nnot normalize), len (normalize by length), or mut\\n(normalize by number of mutations between sequences).\\n(default: len)"
    sym: "Specifies how to combine asymmetric distances. One of\\navg (average of A->B and B->A) or min (minimum of A->B\\nand B->A). (default: avg)"
    link: "Type of linkage to use for hierarchical clustering.\\n(default: single)"
    max_miss: "The maximum number of non-ACGT characters (gaps or Ns)\\nto permit in the junction sequence before excluding\\nthe record from clonal assignment. Note, under single\\nlinkage non-informative positions can create\\nartifactual links between unrelated sequences. Use\\nwith caution. (default: 0)"
    clone_pass: "database with assigned clonal group numbers."
    clone_fail: "database with records failing clonal grouping."
  }
  output {
    File out_stdout = stdout()
  }
}