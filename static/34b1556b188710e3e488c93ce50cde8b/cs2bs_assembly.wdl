version 1.0

task Cs2bsAssembly {
  input {
    Boolean? fast_a
    Boolean? sam
    Boolean? int_minimum_contigs
    Boolean? float_maximum_fraction
    Boolean? validate_anchored_bases
    Boolean? operate_assembly_correction
    Boolean? erode
    Boolean? float_zscore_required
    Boolean? clean
    Boolean? de_scaffolding
    Boolean? erosion
    Boolean? log
  }
  command <<<
    cs2bs_assembly \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (sam) then "-sam" else ""} \
      ~{if (int_minimum_contigs) then "-l" else ""} \
      ~{if (float_maximum_fraction) then "-n" else ""} \
      ~{if (validate_anchored_bases) then "-C" else ""} \
      ~{if (operate_assembly_correction) then "-c" else ""} \
      ~{if (erode) then "-erode" else ""} \
      ~{if (float_zscore_required) then "-z" else ""} \
      ~{if (clean) then "-clean" else ""} \
      ~{if (de_scaffolding) then "-descaffolding" else ""} \
      ~{if (erosion) then "-erosion" else ""} \
      ~{if (log) then "-log" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: "(string)         Double encoded color space assembly in FASTA format."
    sam: "(string)         Double encoded mapped reads into the double encoded assembly (it requires pass_v1.7 or later)"
    int_minimum_contigs: "(int)           Minimum contigs length [100]"
    float_maximum_fraction: "(float)          Maximum tolerated fraction of Ns for each contig. [1]"
    validate_anchored_bases: "(int)           Minimum coverage required to validate anchored bases. [1]"
    operate_assembly_correction: "(int)           Minimum coverage required to operate the assembly correction. [1]"
    erode: "(int)           Minimum coverage considered to erode contig ends [2]"
    float_zscore_required: "(float)          z-score required to calculate the coverage threshold basing on coverage analysis"
    clean: "(int)           Basing on a threshold number of Ns it splits putative chimeric contigs"
    de_scaffolding: "(int, string) it splits scaffolds into contigs considering Ns STRETCH (>= 1st set number) and\\nit includes a suffix tag in the contigs name"
    erosion: "it doesn't erodes contig ends basing on sequence coverage and undefined bases"
    log: "(string)         log file."
  }
  output {
    File out_stdout = stdout()
  }
}