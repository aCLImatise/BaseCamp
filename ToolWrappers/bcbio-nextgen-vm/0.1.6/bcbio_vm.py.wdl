version 1.0

task BcbioVmpy {
  input {
    Directory? datadir
  }
  command <<<
    bcbio_vm_py \
      ~{if defined(datadir) then ("--datadir " +  '"' + datadir + '"') else ""}
  >>>
  parameter_meta {
    datadir: "Directory with genome data and associated files."
  }
  output {
    File out_stdout = stdout()
  }
}