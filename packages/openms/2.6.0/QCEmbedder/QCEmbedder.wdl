version 1.0

task QCEmbedder {
  input {
    File? in
    String? qp_att_acc
    String? cv_acc
    File? run
    File? name
    File? plot
    File? table
    File? out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    QCEmbedder \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(qp_att_acc) then ("-qp_att_acc " +  '"' + qp_att_acc + '"') else ""} \
      ~{if defined(cv_acc) then ("-cv_acc " +  '"' + cv_acc + '"') else ""} \
      ~{if defined(run) then ("-run " +  '"' + run + '"') else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(plot) then ("-plot " +  '"' + plot + '"') else ""} \
      ~{if defined(table) then ("-table " +  '"' + table + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "Input qcml file (valid formats: 'qcML')"
    qp_att_acc: "Defines the qp cv accession of the qp to which the table/image is attached."
    cv_acc: "*     Defines the cv accession of the attachment."
    run: "The file that defined the run under which the qp for the attachment is aggregated as mzML file. The file is only used to extract the run name from the file name. (valid formats: 'mzML')"
    name: "If no file for the run was given (or if the target qp is contained in a set), at least a name of the target run/set containing the the qp for the attachment has to be given."
    plot: "If a plot image is to be attached to a qp, this has to be specified here. (valid formats: 'PNG')"
    table: "If a table is to be attached to a qp, this has to be specified here. (valid formats: 'csv')"
    out: "*          Output extended qcML file (valid formats: 'qcML')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}