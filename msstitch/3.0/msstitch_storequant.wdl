version 1.0

task MsstitchStorequant {
  input {
    String? dbfile
    Array[String] spectra
    Array[String] kron_ik
    Array[String] isobaric
    String? rt_to_l
    String? mz_to_l
    String? mz_to_ltype
  }
  command <<<
    msstitch storequant \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if defined(spectra) then ("--spectra " +  '"' + spectra + '"') else ""} \
      ~{if defined(kron_ik) then ("--kronik " +  '"' + kron_ik + '"') else ""} \
      ~{if defined(isobaric) then ("--isobaric " +  '"' + isobaric + '"') else ""} \
      ~{if defined(rt_to_l) then ("--rttol " +  '"' + rt_to_l + '"') else ""} \
      ~{if defined(mz_to_l) then ("--mztol " +  '"' + mz_to_l + '"') else ""} \
      ~{if defined(mz_to_ltype) then ("--mztoltype " +  '"' + mz_to_ltype + '"') else ""}
  >>>
  parameter_meta {
    dbfile: "Database lookup file"
    spectra: "Spectra files in mzML format. Multiple files can be specified, if order is important, e.g. when matching them with quant data, the order will be their input order at the command line."
    kron_ik: "MS1 quant output files from Kronik in text format.Multiple files can be specified, and matching order with spectra files is important."
    isobaric: "Isobaric quant output files from OpenMS in consensusXML format. Multiple files can be specified, and matching order with spectra files is important."
    rt_to_l: "Specifies tolerance in seconds for retention time when mapping MS1 feature quant info to identifications in the PSM table."
    mz_to_l: "Specifies tolerance in mass-to-charge when mapping MS1 feature quant info to identifications in the PSM table."
    mz_to_ltype: "Type of tolerance in mass-to-charge when mapping MS1 feature quant info to identifications in the PSM table. One of ppm, Da."
  }
}