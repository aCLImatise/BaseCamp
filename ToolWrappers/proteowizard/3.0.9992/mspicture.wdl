version 1.0

task Mspicture {
  input {
    Directory? arg_output_directory
    Boolean? arg_configuration_file
    Boolean? arg_set_label
    String? mz_low
    String? mz_high
    String? timescale
    Boolean? arg_set_histogram
    Boolean? render_linearly_time
    Boolean? render_linearly_scans
    Boolean? z
    Boolean? arg_set_output
    Boolean? bry
    Boolean? grey
    Boolean? bin_sum
    Boolean? indicate_masses_selected
    Int? shape
    Boolean? arg_pepxml_file
    File? arg_msinspect_output
    Boolean? arg_peptide_file
    Boolean? arg_processes_commands
    Boolean? prints_extra_information
    String? input_filenames
  }
  command <<<
    mspicture \
      ~{input_filenames} \
      ~{if (arg_output_directory) then "-o" else ""} \
      ~{if (arg_configuration_file) then "-c" else ""} \
      ~{if (arg_set_label) then "-l" else ""} \
      ~{if defined(mz_low) then ("--mzLow " +  '"' + mz_low + '"') else ""} \
      ~{if defined(mz_high) then ("--mzHigh " +  '"' + mz_high + '"') else ""} \
      ~{if defined(timescale) then ("--timeScale " +  '"' + timescale + '"') else ""} \
      ~{if (arg_set_histogram) then "-b" else ""} \
      ~{if (render_linearly_time) then "-t" else ""} \
      ~{if (render_linearly_scans) then "-s" else ""} \
      ~{if (z) then "-z" else ""} \
      ~{if (arg_set_output) then "-w" else ""} \
      ~{if (bry) then "--bry" else ""} \
      ~{if (grey) then "--grey" else ""} \
      ~{if (bin_sum) then "--binSum" else ""} \
      ~{if (indicate_masses_selected) then "-m" else ""} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if (arg_pepxml_file) then "-p" else ""} \
      ~{if (arg_msinspect_output) then "-i" else ""} \
      ~{if (arg_peptide_file) then "-f" else ""} \
      ~{if (arg_processes_commands) then "-x" else ""} \
      ~{if (prints_extra_information) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    arg_output_directory: "[ --outdir ] arg (=.) : output directory"
    arg_configuration_file: "[ --config ] arg      : configuration file (optionName=value) (ignored)"
    arg_set_label: "[ --label ] arg       : set filename label to xxx"
    mz_low: ": set low m/z cutoff"
    mz_high: ": set high m/z cutoff"
    timescale: ": set scale of time axis"
    arg_set_histogram: "[ --binCount ] arg    : set histogram bin count"
    render_linearly_time: "[ --time ]            : render linearly to time"
    render_linearly_scans: "[ --scan ]            : render linearly to scans"
    z: "[ --zRadius ] arg     : set intensity function z-score radius [=2]"
    arg_set_output: "[ --width ] arg       : set output bitmap width (default is calculated)"
    bry: ": use blue-red-yellow gradient"
    grey: ": use grey-scale gradient"
    bin_sum: ": sum intensity in bins [default = max intensity]"
    indicate_masses_selected: "[ --ms2locs ]         : indicate masses selected for ms2"
    shape: ": shape of the pseudo2d gel markup\\n[circle(default)|square]."
    arg_pepxml_file: "[ --pepxml ] arg      : pepxml file location"
    arg_msinspect_output: "[ --msi ] arg         : msInspect output file location"
    arg_peptide_file: "[ --flat ] arg        : peptide file location (nativeID rt mz score seq)"
    arg_processes_commands: "[ --commands ] arg    : processes commands"
    prints_extra_information: "[ --verbose ]         : prints extra information."
    input_filenames: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_arg_output_directory = "${in_arg_output_directory}"
    File out_arg_msinspect_output = "${in_arg_msinspect_output}"
  }
}