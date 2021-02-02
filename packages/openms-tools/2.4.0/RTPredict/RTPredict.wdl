version 1.0

task RTPredict {
  input {
    File? in_id
    File? in_text
    File? in_oligo_params
    File? in_oligo_train_set
    File? svm_model
    Int? total_gradient_time
    File? out_text
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    RTPredict \
      ~{if defined(in_id) then ("-in_id " +  '"' + in_id + '"') else ""} \
      ~{if defined(in_text) then ("-in_text " +  '"' + in_text + '"') else ""} \
      ~{if defined(in_oligo_params) then ("-in_oligo_params " +  '"' + in_oligo_params + '"') else ""} \
      ~{if defined(in_oligo_train_set) then ("-in_oligo_trainset " +  '"' + in_oligo_train_set + '"') else ""} \
      ~{if defined(svm_model) then ("-svm_model " +  '"' + svm_model + '"') else ""} \
      ~{if defined(total_gradient_time) then ("-total_gradient_time " +  '"' + total_gradient_time + '"') else ""} \
      ~{if (out_text) then "-out_text" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in_id: "Peptides with precursor information (valid formats: 'idXML')"
    in_text: "Peptides as text-based file (valid formats: 'txt')"
    in_oligo_params: "Input file with additional model parameters when using the OLIGO kernel (valid formats: 'paramXML')"
    in_oligo_train_set: "Input file with the used training dataset when using the OLIGO kernel (valid formats: 'txt')"
    svm_model: "*           Svm model in libsvm format (can be produced by RTModel) (valid formats: 'txt')"
    total_gradient_time: "The time (in seconds) of the gradient (peptide RT prediction) (default: '1' min: '1e-05')"
    out_text: ":file <file>        Output file with predicted RT values (valid formats: 'csv')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out_text = "${in_out_text}"
  }
}