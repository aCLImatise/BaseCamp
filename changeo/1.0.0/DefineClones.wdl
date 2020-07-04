version 1.0

task DefineClones.py {
  input {
    Array[String] list_tab_delimited
    Array[String] explicit_output_file
    String? outdir
    String? out_name
    String? log
    Boolean? failed
    String? format
    String? nproc
    String? sf
    String? vf
    String? jf
    Array[String] gf
    String? mode
    String? act
    String? model
    String? dist
    String? norm
    String? sym
    String? link
    Int? max_miss
    String clone_pass
    String clone_fail
  }
  command <<<
    DefineClones.py \
      ~{clone_pass} \
      ~{clone_fail} \
      ~{if defined(list_tab_delimited) then ("-d " +  '"' + list_tab_delimited + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--failed" false="" failed} \
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
    list_tab_delimited: "A list of tab delimited database files. (default: None)"
    explicit_output_file: "Explicit output file name. Note, this argument cannot be used with the --failed, --outdir, or --outname arguments. If unspecified, then the output filename will be based on the input filename(s). (default: None)"
    outdir: "Specify to changes the output directory to the location specified. The input file directory is used if this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed output file to the string specified. May not be specified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be specified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail processing. (default: False)"
    format: "Specify input and output format. (default: airr)"
    nproc: "The number of simultaneous computational processes to execute (CPU cores to utilized). (default: 8)"
    sf: "Field to be used to calculate distance between records. Defaults to junction (airr) or JUNCTION (changeo). (default: None)"
    vf: "Field containing the germline V segment call. Defaults to v_call (airr) or V_CALL (changeo). (default: None)"
    jf: "Field containing the germline J segment call. Defaults to j_call (airr) or J_CALL (changeo). (default: None)"
    gf: "Additional fields to use for grouping clones aside from V, J and junction length. (default: None)"
    mode: "Specifies whether to use the V(D)J allele or gene for initial grouping. (default: gene)"
    act: "Specifies how to handle multiple V(D)J assignments for initial grouping. The \"first\" action will use only the first gene listed. The \"set\" action will use all gene assignments and construct a larger gene grouping composed of any sequences sharing an assignment or linked to another sequence by a common assignment (similar to single-linkage). (default: set)"
    model: "Specifies which substitution model to use for calculating distance between sequences. The \"ham\" model is nucleotide Hamming distance and \"aa\" is amino acid Hamming distance. The \"hh_s1f\" and \"hh_s5f\" models are human specific single nucleotide and 5-mer content models, respectively, from Yaari et al, 2013. The \"mk_rs1nf\" and \"mk_rs5nf\" models are mouse specific single nucleotide and 5-mer content models, respectively, from Cui et al, 2016. The \"m1n_compat\" and \"hs1f_compat\" models are deprecated models provided backwards compatibility with the \"m1n\" and \"hs1f\" models in Change-O v0.3.3 and SHazaM v0.1.4. Both 5-mer models should be considered experimental. (default: ham)"
    dist: "The distance threshold for clonal grouping (default: 0.0)"
    norm: "Specifies how to normalize distances. One of none (do not normalize), len (normalize by length), or mut (normalize by number of mutations between sequences). (default: len)"
    sym: "Specifies how to combine asymmetric distances. One of avg (average of A->B and B->A) or min (minimum of A->B and B->A). (default: avg)"
    link: "Type of linkage to use for hierarchical clustering. (default: single)"
    max_miss: "The maximum number of non-ACGT characters (gaps or Ns) to permit in the junction sequence before excluding the record from clonal assignment. Note, under single linkage non-informative positions can create artifactual links between unrelated sequences. Use with caution. (default: 0)"
    clone_pass: "database with assigned clonal group numbers."
    clone_fail: "database with records failing clonal grouping."
  }
}