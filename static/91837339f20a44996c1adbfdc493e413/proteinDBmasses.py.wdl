version 1.0

task ProteinDBmassespy {
  input {
    Boolean? abundancefile_protein_abundance
    Boolean? dynamicrange_simulation_specified
    Boolean? enzyme_enzyme_used
    Boolean? peplength_minimum_peptide
    Boolean? minpeptides_define_number
    Boolean? peptidesidentified_define_number
    String fast_a_file
  }
  command <<<
    proteinDBmasses_py \
      ~{fast_a_file} \
      ~{if (abundancefile_protein_abundance) then "-a" else ""} \
      ~{if (dynamicrange_simulation_specified) then "-d" else ""} \
      ~{if (enzyme_enzyme_used) then "-e" else ""} \
      ~{if (peplength_minimum_peptide) then "-l" else ""} \
      ~{if (minpeptides_define_number) then "-m" else ""} \
      ~{if (peptidesidentified_define_number) then "-n" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    abundancefile_protein_abundance: "abundancefile   Protein abundance file. If not used, the script will just report the number of peptides and molecular weight of the proteins."
    dynamicrange_simulation_specified: "dynamic-range   Simulation of peptide intensity by using the peptide detectability dynamic range specified. If not used, there will not be any simulation"
    enzyme_enzyme_used: "enzyme  Enzyme used for in-silico digestion (peptide counting). Options: trypsin, Asp-N, Arg-C, Chymotrypsin, Lys-C, Lys-N. Default: trypsin"
    peplength_minimum_peptide: "pep-length      Minimum peptide length for the in-silico digestion. Default: 5"
    minpeptides_define_number: "min-peptides    Define a minimum number of peptides to identify a protein. This must be completed with the -n option."
    peptidesidentified_define_number: "peptides-identified Define a number of identified peptides to estimate the number of proteins identified."
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}