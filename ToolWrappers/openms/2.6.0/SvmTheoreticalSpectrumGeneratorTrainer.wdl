version 1.0

task SvmTheoreticalSpectrumGeneratorTrainer {
  input {
    File? in_spectra
    File? in_identifications
    File? model_output_file
    Int? precursor_charge
    Boolean? write_training_files
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    SvmTheoreticalSpectrumGeneratorTrainer \
      ~{if defined(in_spectra) then ("-in_spectra " +  '"' + in_spectra + '"') else ""} \
      ~{if defined(in_identifications) then ("-in_identifications " +  '"' + in_identifications + '"') else ""} \
      ~{if defined(model_output_file) then ("-model_output_file " +  '"' + model_output_file + '"') else ""} \
      ~{if defined(precursor_charge) then ("-precursor_charge " +  '"' + precursor_charge + '"') else ""} \
      ~{if (write_training_files) then "-write_training_files" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in_spectra: "*          Input Training Spectra in mzML (valid formats: 'mzML')"
    in_identifications: "*  Input file with corresponding sequences in idXML (valid formats: 'idXML')"
    model_output_file: "*   Name for output files. For each ion_type one file <filename>_residue_loss_charge.svm and one <filename>.info which has to be passed to the SvmTheoretical SpectrumGenerator"
    precursor_charge: "Precursor charge state used for model training (default: '2' min: '1' max: '3')"
    write_training_files: "No models are trained but input training files for libSVM command line tools are produced"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_model_output_file = "${in_model_output_file}"
  }
}