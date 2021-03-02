version 1.0

task PTPredict {
  input {
    File? in
    File? in_oligo_params
    File? in_oligo_train_set
    File? out
    File? svm_model
    Int? max_number_of_peptides
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    PTPredict \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_oligo_params) then ("-in_oligo_params " +  '"' + in_oligo_params + '"') else ""} \
      ~{if defined(in_oligo_train_set) then ("-in_oligo_trainset " +  '"' + in_oligo_train_set + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(svm_model) then ("-svm_model " +  '"' + svm_model + '"') else ""} \
      ~{if defined(max_number_of_peptides) then ("-max_number_of_peptides " +  '"' + max_number_of_peptides + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*                    Input file  (valid formats: 'idXML')"
    in_oligo_params: "Input file with additional model parameters when using the OLIGO kernel (valid formats: 'paramXML')"
    in_oligo_train_set: "Input file with the used training dataset when using the OLIGO kernel (valid formats: 'txt')"
    out: "*                   Output file\\n(valid formats: 'idXML')"
    svm_model: "*             Svm model in libsvm format (can be produced by PTModel) (valid formats: 'txt')"
    max_number_of_peptides: "The maximum number of peptides considered at once (bigger number will lead to faster results but needs more memory).\\n(default: '100000')"
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