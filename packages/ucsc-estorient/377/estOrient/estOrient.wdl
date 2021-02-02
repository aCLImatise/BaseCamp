version 1.0

task EstOrient {
  input {
    String? chrom
    Boolean? keep_disoriented
    File? disoriented
    Boolean? incl_ver
    File? est_orient_info
    File? info
    String present_dot
  }
  command <<<
    estOrient \
      ~{present_dot} \
      ~{if defined(chrom) then ("-chrom " +  '"' + chrom + '"') else ""} \
      ~{if (keep_disoriented) then "-keepDisoriented" else ""} \
      ~{if defined(disoriented) then ("-disoriented " +  '"' + disoriented + '"') else ""} \
      ~{if (incl_ver) then "-inclVer" else ""} \
      ~{if defined(est_orient_info) then ("-estOrientInfo " +  '"' + est_orient_info + '"') else ""} \
      ~{if defined(info) then ("-info " +  '"' + info + '"') else ""}
  >>>
  parameter_meta {
    chrom: "- process this chromosome, maybe repeated"
    keep_disoriented: "- don't drop ESTs where orientation can't\\nbe determined."
    disoriented: "- output ESTs that where orientation can't\\nbe determined to this file."
    incl_ver: "- add NCBI version number to accession if not already"
    est_orient_info: "- instead of getting the orientation information\\nfrom the estOrientInfo table, load it from this file.  This data is the\\noutput of polyInfo command.  If this option is specified, the direction\\nwill not be looked up in the gbCdnaInfo table and db can be `no'."
    info: "- write information about each EST to this tab\\nseparated file\\nqName tName tStart tEnd origStrand newStrand orient\\nwhere orient is < 0 if PSL was reverse, > 0 if it was left unchanged\\nand 0 if the orientation couldn't be determined (and was left\\nunchanged).\\n"
    present_dot: "-fileInput - estTable is a psl file"
  }
  output {
    File out_stdout = stdout()
    File out_disoriented = "${in_disoriented}"
    File out_est_orient_info = "${in_est_orient_info}"
  }
}