version 1.0

task Amb2chmPsfCrdpy {
  input {
    String? d
    File? prmtop_file
    File? inpcrd_file
    File? psf_file
    File? dict
  }
  command <<<
    amb2chm_psf_crd_py \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(prmtop_file) then ("-p " +  '"' + prmtop_file + '"') else ""} \
      ~{if defined(inpcrd_file) then ("-c " +  '"' + inpcrd_file + '"') else ""} \
      ~{if defined(psf_file) then ("-f " +  '"' + psf_file + '"') else ""} \
      ~{if defined(dict) then ("--dict " +  '"' + dict + '"') else ""}
  >>>
  parameter_meta {
    d: "[--dict dict_file]"
    prmtop_file: "Prmtop file"
    inpcrd_file: "Inpcrd file"
    psf_file: "PSF file"
    dict: "Dictionary file name"
  }
  output {
    File out_stdout = stdout()
  }
}