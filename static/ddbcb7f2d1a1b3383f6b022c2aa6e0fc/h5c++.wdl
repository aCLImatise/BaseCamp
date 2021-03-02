version 1.0

task H5c {
  input {
    Boolean? echo
    Directory? prefix
    Boolean? show
    Boolean? show_config
    Boolean? shlib
    Boolean? no_shlib
    Int hdf_five_cxx
    Int hdf_five_cxx_linker
    String variable
  }
  command <<<
    h5c__ \
      ~{hdf_five_cxx} \
      ~{hdf_five_cxx_linker} \
      ~{variable} \
      ~{if (echo) then "-echo" else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if (show) then "-show" else ""} \
      ~{if (show_config) then "-showconfig" else ""} \
      ~{if (shlib) then "-shlib" else ""} \
      ~{if (no_shlib) then "-noshlib" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    echo: "Show all the shell commands executed"
    prefix: "Prefix directory to find HDF5 lib/ and include/\\nsubdirectories [default: /usr/local]"
    show: "Show the commands without executing them"
    show_config: "Show the HDF5 library configuration summary"
    shlib: "Compile with shared HDF5 libraries [default for hdf5 built\\nwithout static libraries]"
    no_shlib: "Compile with static HDF5 libraries [default for hdf5 built\\nwith static libraries]"
    hdf_five_cxx: "-  use a different C++ compiler"
    hdf_five_cxx_linker: "-  use a different linker"
    variable: "Current value to be replaced"
  }
  output {
    File out_stdout = stdout()
  }
}