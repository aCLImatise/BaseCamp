version 1.0

task Spectrast2tsvpy {
  input {
    Boolean? remove_duplicate_masses
    Boolean? use_theoretical_mass
    Boolean? fastafile_fasta_file
    Boolean? massmodifs_list_g
    Boolean? labelingfile_file_containing
    Boolean? outputkey_select_provided
    Boolean? masslimits_lower_limits
    Boolean? modsfile_file_modifications
    Boolean? int_max_number
    Boolean? int_min_number
    Boolean? float_error_allowed
    Boolean? int_number_use
    Boolean? ionseries_list_used
    Boolean? timescale_options_minutes
    Boolean? unimodcode_use_code
    Boolean? verbose_mode
    Boolean? swathsfile_file_containing
    Boolean? fragment_ion_charge
    Boolean? uisorder_when_using
    File? outfile_output_file
    String spectra_st_file
  }
  command <<<
    spectrast2tsv_py \
      ~{spectra_st_file} \
      ~{if (remove_duplicate_masses) then "-d" else ""} \
      ~{if (use_theoretical_mass) then "-e" else ""} \
      ~{if (fastafile_fasta_file) then "-f" else ""} \
      ~{if (massmodifs_list_g) then "-g" else ""} \
      ~{if (labelingfile_file_containing) then "-i" else ""} \
      ~{if (outputkey_select_provided) then "-k" else ""} \
      ~{if (masslimits_lower_limits) then "-l" else ""} \
      ~{if (modsfile_file_modifications) then "-m" else ""} \
      ~{if (int_max_number) then "-n" else ""} \
      ~{if (int_min_number) then "-o" else ""} \
      ~{if (float_error_allowed) then "-p" else ""} \
      ~{if (int_number_use) then "-q" else ""} \
      ~{if (ionseries_list_used) then "-s" else ""} \
      ~{if (timescale_options_minutes) then "-t" else ""} \
      ~{if (unimodcode_use_code) then "-u" else ""} \
      ~{if (verbose_mode) then "-v" else ""} \
      ~{if (swathsfile_file_containing) then "-w" else ""} \
      ~{if (fragment_ion_charge) then "-x" else ""} \
      ~{if (uisorder_when_using) then "-y" else ""} \
      ~{if (outfile_output_file) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    remove_duplicate_masses: "Remove duplicate masses from labeling"
    use_theoretical_mass: "Use theoretical mass"
    fastafile_fasta_file: "fasta_file    Fasta file to relate peptides to their proteins (this is optional)."
    massmodifs_list_g: "mass_modifs   List of allowed fragment mass modifications. Useful for phosphorylation and neutral losses. Example: -g -79.97,-97.98,-17.03,-18.01"
    labelingfile_file_containing: "labeling_file File containing the amino acid isotopic labeling mass shifts. If this option is used, heavy transitions will be generated."
    outputkey_select_provided: "output_key    Select the output provided. Keys available: openswath, peakview. Default: peakview"
    masslimits_lower_limits: "mass_limits   Lower and upper mass limits of fragment ions. Example: -l 400,2000"
    modsfile_file_modifications: "mods_file     File with the modifications delta mass"
    int_max_number: "int           Max number of reported ions per peptide/z. Default: 20"
    int_min_number: "int           Min number of reported ions per peptide/z. Default: 3"
    float_error_allowed: "float         Maximum error allowed at the annotation of a fragment ion. Default: 0.05"
    int_number_use: "int            Number of processors to use (only for isoforms!). Default: 1"
    ionseries_list_used: "ion_series    List of ion series to be used. Example: -s y,b"
    timescale_options_minutes: "time-scale    Options: minutes, seconds. Default: seconds."
    unimodcode_use_code: "unimod-code    Use this unimod code as a switching modification. Useful for phosphorylations. Example: -u 21"
    verbose_mode: "Verbose mode."
    swathsfile_file_containing: "swaths_file   File containing the swath ranges. This is used to remove transitions with Q3 falling in the swath mass range. (line breaks in windows/unix format)"
    fragment_ion_charge: "allowed_frg_z Fragment ion charge states allowed. Default: 1,2"
    uisorder_when_using: "UIS-order     When using a switching modification, this determines the UIS order to be calculated. If -1 is set, all transitions for each isoform will be reported. Default : 2"
    outfile_output_file: "outfile       Output file name (default: appends _peakview.txt)"
    spectra_st_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile_output_file = "${in_outfile_output_file}"
  }
}