version 1.0

task MsstitchStorequant {
  input {
    File? dbfile
    Array[String] spectra
    Array[String] kron_ik
    Array[String] dinosaur
    Array[String] isobaric
    Boolean? apex
    Int? rt_to_l
    Int? mz_to_l
    String? mz_to_ltype
  }
  command <<<
    msstitch storequant \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if defined(spectra) then ("--spectra " +  '"' + spectra + '"') else ""} \
      ~{if defined(kron_ik) then ("--kronik " +  '"' + kron_ik + '"') else ""} \
      ~{if defined(dinosaur) then ("--dinosaur " +  '"' + dinosaur + '"') else ""} \
      ~{if defined(isobaric) then ("--isobaric " +  '"' + isobaric + '"') else ""} \
      ~{if (apex) then "--apex" else ""} \
      ~{if defined(rt_to_l) then ("--rttol " +  '"' + rt_to_l + '"') else ""} \
      ~{if defined(mz_to_l) then ("--mztol " +  '"' + mz_to_l + '"') else ""} \
      ~{if defined(mz_to_ltype) then ("--mztoltype " +  '"' + mz_to_ltype + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msstitch:3.5--py_0"
  }
  parameter_meta {
    dbfile: "Database lookup file"
    spectra: "Spectra files in mzML format. Multiple files can be\\nspecified, if order is important, e.g. when matching\\nthem with quant data, the order will be their input\\norder at the command line."
    kron_ik: "MS1 quant output files from Kronik in text\\nformat.Multiple files can be specified, and matching\\norder with spectra files is important."
    dinosaur: "MS1 quant output files from Kronik in text\\nformat.Multiple files can be specified, and matching\\norder with spectra files is important."
    isobaric: "Isobaric quant output files from OpenMS in\\nconsensusXML format. Multiple files can be specified,\\nand matching order with spectra files is important."
    apex: "Use MS1 peak envelope apex instead of peak sum when\\nstoring quant data."
    rt_to_l: "Specifies tolerance in seconds for retention time when\\nmapping MS1 feature quant info to identifications in\\nthe PSM table."
    mz_to_l: "Specifies tolerance in mass-to-charge when mapping MS1\\nfeature quant info to identifications in the PSM\\ntable."
    mz_to_ltype: "Type of tolerance in mass-to-charge when mapping MS1\\nfeature quant info to identifications in the PSM\\ntable. One of ppm, Da.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}