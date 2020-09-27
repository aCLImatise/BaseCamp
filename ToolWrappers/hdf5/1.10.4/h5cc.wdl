version 1.0

task H5cc {
  input {
    Boolean? echo
    Directory? prefix
    Boolean? show
    Boolean? show_config
    Boolean? shlib
    Boolean? no_shlib
    Int hdf_five_cc
    Int hdf_five_clinker
    String variable
  }
  command <<<
    h5cc \
      ~{hdf_five_cc} \
      ~{hdf_five_clinker} \
      ~{variable} \
      ~{if (echo) then "-echo" else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if (show) then "-show" else ""} \
      ~{if (show_config) then "-showconfig" else ""} \
      ~{if (shlib) then "-shlib" else ""} \
      ~{if (no_shlib) then "-noshlib" else ""}
  >>>
  parameter_meta {
    echo: "Show all the shell commands executed"
    prefix: "Prefix directory to find HDF5 lib/ and include/\\nsubdirectories [default: /usr/local]"
    show: "Show the commands without executing them"
    show_config: "Show the HDF5 library configuration summary"
    shlib: "Compile with shared HDF5 libraries [default for hdf5 built\\nwithout static libraries]"
    no_shlib: "Compile with static HDF5 libraries [default for hdf5 built\\nwith static libraries]"
    hdf_five_cc: "-  use a different C compiler"
    hdf_five_clinker: "-  use a different linker"
    variable: "Current value to be replaced"
  }
  output {
    File out_stdout = stdout()
  }
}