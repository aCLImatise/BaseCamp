version 1.0

task Mspicture {
  input {
    Boolean? arg_output_directory
    Boolean? arg_configuration_file
    Boolean? arg_set_filename
    String? mz_low
    String? mz_high
    String? timescale
    Boolean? arg_set_count
    Boolean? render_linearly_time
    Boolean? render_linearly_scans
    Boolean? z
    Boolean? arg_set_output
    Boolean? bry
    Boolean? grey
    Boolean? bin_sum
    Boolean? indicate_masses_selected
    String? shape
    Boolean? arg_pepxml_file
    Boolean? arg_msinspect_output
    Boolean? arg_peptide_location
    Boolean? arg_processes_commands
    Boolean? prints_extra_information
    String? input_filenames
  }
  command <<<
    mspicture \
      ~{input_filenames} \
      ~{true="-o" false="" arg_output_directory} \
      ~{true="-c" false="" arg_configuration_file} \
      ~{true="-l" false="" arg_set_filename} \
      ~{if defined(mz_low) then ("--mzLow " +  '"' + mz_low + '"') else ""} \
      ~{if defined(mz_high) then ("--mzHigh " +  '"' + mz_high + '"') else ""} \
      ~{if defined(timescale) then ("--timeScale " +  '"' + timescale + '"') else ""} \
      ~{true="-b" false="" arg_set_count} \
      ~{true="-t" false="" render_linearly_time} \
      ~{true="-s" false="" render_linearly_scans} \
      ~{true="-z" false="" z} \
      ~{true="-w" false="" arg_set_output} \
      ~{true="--bry" false="" bry} \
      ~{true="--grey" false="" grey} \
      ~{true="--binSum" false="" bin_sum} \
      ~{true="-m" false="" indicate_masses_selected} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{true="-p" false="" arg_pepxml_file} \
      ~{true="-i" false="" arg_msinspect_output} \
      ~{true="-f" false="" arg_peptide_location} \
      ~{true="-x" false="" arg_processes_commands} \
      ~{true="-v" false="" prints_extra_information}
  >>>
  parameter_meta {
    arg_output_directory: "[ --outdir ] arg (=.) : output directory"
    arg_configuration_file: "[ --config ] arg      : configuration file (optionName=value) (ignored)"
    arg_set_filename: "[ --label ] arg       : set filename label to xxx"
    mz_low: ": set low m/z cutoff"
    mz_high: ": set high m/z cutoff"
    timescale: ": set scale of time axis"
    arg_set_count: "[ --binCount ] arg    : set histogram bin count"
    render_linearly_time: "[ --time ]            : render linearly to time"
    render_linearly_scans: "[ --scan ]            : render linearly to scans"
    z: "[ --zRadius ] arg     : set intensity function z-score radius [=2]"
    arg_set_output: "[ --width ] arg       : set output bitmap width (default is calculated)"
    bry: ": use blue-red-yellow gradient"
    grey: ": use grey-scale gradient"
    bin_sum: ": sum intensity in bins [default = max intensity]"
    indicate_masses_selected: "[ --ms2locs ]         : indicate masses selected for ms2"
    shape: ": shape of the pseudo2d gel markup  [circle(default)|square]."
    arg_pepxml_file: "[ --pepxml ] arg      : pepxml file location"
    arg_msinspect_output: "[ --msi ] arg         : msInspect output file location"
    arg_peptide_location: "[ --flat ] arg        : peptide file location (nativeID rt mz score seq)"
    arg_processes_commands: "[ --commands ] arg    : processes commands"
    prints_extra_information: "[ --verbose ]         : prints extra information."
    input_filenames: ""
  }
}