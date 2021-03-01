version 1.0

task PbMpi {
  input {
    Boolean? cat
    String? nc_at
    String? cat_fix
    Boolean? lg
    Boolean? wag
    Boolean? jtt
    Boolean? gtr
    Boolean? poisson
    Int? dg_am
    Boolean? dc
    File? starts_specified_tree
    File? chain_run_fixed
    Int? saving_frequency_length
    Boolean? _forcing_checks
    Boolean? save_s_save
  }
  command <<<
    pb_mpi \
      ~{if (cat) then "-cat" else ""} \
      ~{if defined(nc_at) then ("-ncat " +  '"' + nc_at + '"') else ""} \
      ~{if defined(cat_fix) then ("-catfix " +  '"' + cat_fix + '"') else ""} \
      ~{if (lg) then "-lg" else ""} \
      ~{if (wag) then "-wag" else ""} \
      ~{if (jtt) then "-jtt" else ""} \
      ~{if (gtr) then "-gtr" else ""} \
      ~{if (poisson) then "-poisson" else ""} \
      ~{if defined(dg_am) then ("-dgam " +  '"' + dg_am + '"') else ""} \
      ~{if (dc) then "-dc" else ""} \
      ~{if defined(starts_specified_tree) then ("-t " +  '"' + starts_specified_tree + '"') else ""} \
      ~{if defined(chain_run_fixed) then ("-T " +  '"' + chain_run_fixed + '"') else ""} \
      ~{if defined(saving_frequency_length) then ("-x " +  '"' + saving_frequency_length + '"') else ""} \
      ~{if (_forcing_checks) then "-f" else ""} \
      ~{if (save_s_save) then "-s" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phylobayes-mpi:1.8c--h78e549b_0"
  }
  parameter_meta {
    cat: ": infinite mixture (Dirichlet process) of equilibirium frequency profiles"
    nc_at: ": finite mixture of equilibirium frequency profiles"
    cat_fix: ": specifying a fixed pre-defined mixture of profiles"
    lg: ": Le and Gascuel 2008"
    wag: ": Whelan and Goldman 2001"
    jtt: ": Jones, Taylor, Thornton 1992"
    gtr: ": general time reversible"
    poisson: ": Poisson matrix, all relative exchangeabilities equal to 1 (Felsenstein 1981)"
    dg_am: ": discrete gamma. ncat = number of categories (4 by default, 1 = uniform rates model)"
    dc: ": excludes constant columns"
    starts_specified_tree: ": starts from specified tree"
    chain_run_fixed: ": chain run under fixed, specified tree"
    saving_frequency_length: "<until>  : saving frequency, and chain length (until = -1 : forever)"
    _forcing_checks: ": forcing checks"
    save_s_save: ": -s : save all / -S : save only the trees"
  }
  output {
    File out_stdout = stdout()
  }
}