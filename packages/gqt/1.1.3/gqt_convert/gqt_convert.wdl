version 1.0

task GqtConvert {
  input {
    Boolean? ped_file_name
    Boolean? sample_name_column
    File? gqt_output_file
    File? vid_output_file
    File? off_output_file
    File? bim_output_file
    File? ped_db_output
    Boolean? number_variants_opt
    Boolean? number_samples_opt
    Boolean? tmp_working_directory
    File? i
    String bcf
    String ped
  }
  command <<<
    gqt convert \
      ~{bcf} \
      ~{ped} \
      ~{if (ped_file_name) then "-p" else ""} \
      ~{if (sample_name_column) then "-c" else ""} \
      ~{if (gqt_output_file) then "-G" else ""} \
      ~{if (vid_output_file) then "-V" else ""} \
      ~{if (off_output_file) then "-O" else ""} \
      ~{if (bim_output_file) then "-B" else ""} \
      ~{if (ped_db_output) then "-D" else ""} \
      ~{if (number_variants_opt) then "-r" else ""} \
      ~{if (number_samples_opt) then "-f" else ""} \
      ~{if (tmp_working_directory) then "-t" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    ped_file_name: "PED file name (opt.)"
    sample_name_column: "Sample name column in PED (Default 2)"
    gqt_output_file: "GQT output file name (opt.)"
    vid_output_file: "VID output file name (opt.)"
    off_output_file: "OFF output file name (opt.)"
    bim_output_file: "BIM output file name (opt.)"
    ped_db_output: "PED DB output file name (opt.)"
    number_variants_opt: "Number of variants (opt. with index)"
    number_samples_opt: "Number of samples (opt. with index)"
    tmp_working_directory: "Tmp working directory(./ by defualt)"
    i: ""
    bcf: "create a GQT index"
    ped: "create sample phenotype database"
  }
  output {
    File out_stdout = stdout()
    File out_gqt_output_file = "${in_gqt_output_file}"
    File out_vid_output_file = "${in_vid_output_file}"
    File out_off_output_file = "${in_off_output_file}"
    File out_bim_output_file = "${in_bim_output_file}"
    File out_ped_db_output = "${in_ped_db_output}"
  }
}