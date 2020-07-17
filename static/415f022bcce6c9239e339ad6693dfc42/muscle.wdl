version 1.0

task Muscle {
  input {
    String? in
    String? out
    Boolean? diags
    String? maxiter_s
    String? max_hours
    Boolean? html
    Boolean? msf
    Boolean? clw
    Boolean? cl_wstrict
    Boolean? log
    Boolean? quiet
    Boolean? version
  }
  command <<<
    muscle \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-diags" false="" diags} \
      ~{if defined(maxiter_s) then ("-maxiters " +  '"' + maxiter_s + '"') else ""} \
      ~{if defined(max_hours) then ("-maxhours " +  '"' + max_hours + '"') else ""} \
      ~{true="-html" false="" html} \
      ~{true="-msf" false="" msf} \
      ~{true="-clw" false="" clw} \
      ~{true="-clwstrict" false="" cl_wstrict} \
      ~{true="-log" false="" log} \
      ~{true="-quiet" false="" quiet} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    in: "Input file in FASTA format (default stdin)"
    out: "Output alignment in FASTA format (default stdout)"
    diags: "Find diagonals (faster for similar sequences)"
    maxiter_s: "Maximum number of iterations (integer, default 16)"
    max_hours: "Maximum time to iterate in hours (default no limit)"
    html: "Write output in HTML format (default FASTA)"
    msf: "Write output in GCG MSF format (default FASTA)"
    clw: "Write output in CLUSTALW format (default FASTA)"
    cl_wstrict: "As -clw, with 'CLUSTAL W (1.81)' header"
    log: "[a] <logfile>  Log to file (append if -loga, overwrite if -log)"
    quiet: "Do not write progress messages to stderr"
    version: "Display version information and exit"
  }
}