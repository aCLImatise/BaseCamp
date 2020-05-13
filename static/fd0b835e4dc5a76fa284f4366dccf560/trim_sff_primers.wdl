version 1.0

task TrimSffPrimers.py {
  input {
    String libdirLibdir
    String inputInputMap
  }
  command <<<
    trim_sff_primers.py \
      ~{if defined(libdirLibdir) then ("--libdir " +  '"' + libdirLibdir + '"') else ""} \
      ~{if defined(inputInputMap) then ("--input_map " +  '"' + inputInputMap + '"') else ""}
  >>>
}