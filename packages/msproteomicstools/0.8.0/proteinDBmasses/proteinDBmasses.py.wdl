version 1.0

task ProteinDBmassespy {
  input {
    Boolean? protein_abundance_file
    Boolean? dynamicrange_simulation_peptide
    Boolean? enzyme_enzyme_used
    Boolean? peplength_minimum_peptide
    Boolean? define_minimum_number
    Boolean? peptidesidentified_define_number
    String fast_a_file
  }
  command <<<
    proteinDBmasses_py \
      ~{fast_a_file} \
      ~{if (protein_abundance_file) then "-a" else ""} \
      ~{if (dynamicrange_simulation_peptide) then "-d" else ""} \
      ~{if (enzyme_enzyme_used) then "-e" else ""} \
      ~{if (peplength_minimum_peptide) then "-l" else ""} \
      ~{if (define_minimum_number) then "-m" else ""} \
      ~{if (peptidesidentified_define_number) then "-n" else ""}
  >>>
  parameter_meta {
    protein_abundance_file: "abundancefile   Protein abundance file. If not used, the script will just report the number of peptides and molecular weight of the proteins."
    dynamicrange_simulation_peptide: "dynamic-range   Simulation of peptide intensity by using the peptide detectability dynamic range specified. If not used, there will not be any simulation"
    enzyme_enzyme_used: "enzyme  Enzyme used for in-silico digestion (peptide counting). Options: trypsin, Asp-N, Arg-C, Chymotrypsin, Lys-C, Lys-N. Default: trypsin"
    peplength_minimum_peptide: "pep-length      Minimum peptide length for the in-silico digestion. Default: 5"
    define_minimum_number: "min-peptides    Define a minimum number of peptides to identify a protein. This must be completed with the -n option."
    peptidesidentified_define_number: "peptides-identified Define a number of identified peptides to estimate the number of proteins identified."
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}