version 1.0

task GetMirdeep2Precursorspl {
  input {
    Boolean? s
    Boolean? var_1
    Boolean? output_dna_rna
    Boolean? make_d_only
    Boolean? getmature_instead_precursor
    Boolean? getstar_instead_precursor
    Boolean? trackname_for_bedfiles
    Boolean? outdir
    String? r
    Boolean? more_options
    Boolean? options
  }
  command <<<
    get_mirdeep2_precursors_pl \
      ~{if (s) then "-s" else ""} \
      ~{if (var_1) then "-t" else ""} \
      ~{if (output_dna_rna) then "-d" else ""} \
      ~{if (make_d_only) then "-p" else ""} \
      ~{if (getmature_instead_precursor) then "-m" else ""} \
      ~{if (getstar_instead_precursor) then "-k" else ""} \
      ~{if (trackname_for_bedfiles) then "-T" else ""} \
      ~{if (outdir) then "-o" else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0"
  }
  parameter_meta {
    s: "[int]        output only precursors with min-score >= [int]"
    var_1: "[int]        output only precursors with score     <  [int]"
    output_dna_rna: "output dna instead of rna"
    make_d_only: "make simple id with the name only"
    getmature_instead_precursor: "get_mature instead of precursor"
    getstar_instead_precursor: "get_star instead of precursor"
    trackname_for_bedfiles: "Trackname for bedfiles"
    outdir: "outdir"
    r: ""
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}