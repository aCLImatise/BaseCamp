version 1.0

task CompoundIdentificationpy {
  input {
    String? lm_zi
    File? an_no
    File? uniqid
    File? mz_id
    File? rt_id
    String? library
    File? lib_uniqid
    File? libm_zid
    File? libr_tid
    File? output_path_identifiedcompounds
  }
  command <<<
    compound_identification_py \
      ~{if defined(lm_zi) then ("-lmzi " +  '"' + lm_zi + '"') else ""} \
      ~{if defined(an_no) then ("--anno " +  '"' + an_no + '"') else ""} \
      ~{if defined(uniqid) then ("--uniqID " +  '"' + uniqid + '"') else ""} \
      ~{if defined(mz_id) then ("--mzID " +  '"' + mz_id + '"') else ""} \
      ~{if defined(rt_id) then ("--rtID " +  '"' + rt_id + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(lib_uniqid) then ("--libuniqID " +  '"' + lib_uniqid + '"') else ""} \
      ~{if defined(libm_zid) then ("--libmzID " +  '"' + libm_zid + '"') else ""} \
      ~{if defined(libr_tid) then ("--librtID " +  '"' + libr_tid + '"') else ""} \
      ~{if defined(output_path_identifiedcompounds) then ("--output " +  '"' + output_path_identifiedcompounds + '"') else ""}
  >>>
  parameter_meta {
    lm_zi: "LIBRT -o OUTPUT"
    an_no: "Out path for first file"
    uniqid: "Name of thecolumn in file that contains the uniqID"
    mz_id: "Name of the column in file that contains MZ"
    rt_id: "Name of the column in file that contains RT"
    library: "Library to use forthe matching."
    lib_uniqid: "Name of thecolumn in the library file that contains\\nthe uniqID"
    libm_zid: "Name of the column in the library file that contains\\nMZ"
    libr_tid: "Name of the column in the library file that contains\\nRT"
    output_path_identifiedcompounds: "Output path for identifiedcompounds.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_an_no = "${in_an_no}"
    File out_output_path_identifiedcompounds = "${in_output_path_identifiedcompounds}"
  }
}