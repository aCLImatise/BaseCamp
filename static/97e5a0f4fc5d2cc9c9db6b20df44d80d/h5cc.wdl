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
    Int hdf_five_cppflags
    Int hdf_five_cflags
    Int hdf_five_ldflags
    Int hdf_five_libs
  }
  command <<<
    h5cc \
      ~{hdf_five_cc} \
      ~{hdf_five_clinker} \
      ~{variable} \
      ~{hdf_five_cppflags} \
      ~{hdf_five_cflags} \
      ~{hdf_five_ldflags} \
      ~{hdf_five_libs} \
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
    hdf_five_cppflags: "\\\"\\\""
    hdf_five_cflags: "\\\"\\\""
    hdf_five_ldflags: "\\\"\\\""
    hdf_five_libs: "\\\"\\\""
  }
  output {
    File out_stdout = stdout()
  }
}