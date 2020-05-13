version 1.0

task MakePerLibrarySff.py {
  input {
    String inputInputSff
    String libdirLibdir
  }
  command <<<
    make_per_library_sff.py \
      ~{if defined(inputInputSff) then ("--input_sff " +  '"' + inputInputSff + '"') else ""} \
      ~{if defined(libdirLibdir) then ("--libdir " +  '"' + libdirLibdir + '"') else ""}
  >>>
}