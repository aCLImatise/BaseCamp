version 1.0

task Tandem2pin {
  input {
    Boolean? png_as_ef
    File? ms_two_file
    Boolean? isotope
    String? psm_annotation
    Boolean? pattern
    Boolean? databases
    Boolean? cleavages
    Boolean? min_length
    Boolean? max_length
    Boolean? min_mass
    Boolean? max_mass
    String? o
    String target_file
  }
  command <<<
    tandem2pin \
      ~{target_file} \
      ~{if (png_as_ef) then "--PNGaseF" else ""} \
      ~{if defined(ms_two_file) then ("--ms2-file " +  '"' + ms_two_file + '"') else ""} \
      ~{if (isotope) then "--isotope" else ""} \
      ~{if defined(psm_annotation) then ("--psm-annotation " +  '"' + psm_annotation + '"') else ""} \
      ~{if (pattern) then "--pattern" else ""} \
      ~{if (databases) then "--databases" else ""} \
      ~{if (cleavages) then "--cleavages" else ""} \
      ~{if (min_length) then "--min-length" else ""} \
      ~{if (max_length) then "--max-length" else ""} \
      ~{if (min_mass) then "--min-mass" else ""} \
      ~{if (max_mass) then "--max-mass" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    png_as_ef: "Calculate feature based on N-linked glycosylation"
    ms_two_file: "File containing spectra and retention time. The file"
    isotope: "Mass difference calculated to closest isotope mass"
    psm_annotation: "An anotation scheme used to convert the psms from"
    pattern: "Pattern used to identify the decoy PSMs. Default ="
    databases: "Link to the fasta database/s used in the search"
    cleavages: "Number of allowed miss cleavages used in the search"
    min_length: "Minimum peptide length allowed used in the search"
    max_length: "Maximum peptide length allowed used in the search"
    min_mass: "Minimum peptide mass allowed used in the search"
    max_mass: "Maximum peptide mass allowed used in the search"
    o: ""
    target_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}