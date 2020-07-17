version 1.0

task GaasPrepareMatriceByWindow.pl {
  input {
    String? output_name_directory
    String? p
    Directory? ad
  }
  command <<<
    gaas_prepare_matrice_by_window.pl \
      ~{if defined(output_name_directory) then ("--output " +  '"' + output_name_directory + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(ad) then ("--ad " +  '"' + ad + '"') else ""}
  >>>
  parameter_meta {
    output_name_directory: "Output name of the directory that will contain results"
    p: ""
    ad: ""
  }
}