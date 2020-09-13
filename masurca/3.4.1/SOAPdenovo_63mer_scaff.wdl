version 1.0

task SOAPdenovo63merScaff {
  input {
    File? inputgraph_prefix_input
    Boolean? optional_fill_gaps
    Boolean? optional_use_mode
    Boolean? optional_unmask_contigs
    Boolean? optional_structure_exists
    Boolean? optional_keep_contigs
    Boolean? optional_output_information
    Int? gaplendiff_allowed_difference
    Int? mincontiglen_shortest_contig
    Float? mincontigcvg_minimum_contig
    Float? maxcontigcvg_maximum_contig
    Float? insertsizeupperbound_bavgins_will
    Float? bubblecoverage_remove_contig
    Int? genomesize_genome_size
    Int? number_cpu_use
    String sc_aff
  }
  command <<<
    SOAPdenovo_63mer scaff \
      ~{sc_aff} \
      ~{if defined(inputgraph_prefix_input) then ("-g " +  '"' + inputgraph_prefix_input + '"') else ""} \
      ~{if (optional_fill_gaps) then "-F" else ""} \
      ~{if (optional_use_mode) then "-z" else ""} \
      ~{if (optional_unmask_contigs) then "-u" else ""} \
      ~{if (optional_structure_exists) then "-S" else ""} \
      ~{if (optional_keep_contigs) then "-w" else ""} \
      ~{if (optional_output_information) then "-V" else ""} \
      ~{if defined(gaplendiff_allowed_difference) then ("-G " +  '"' + gaplendiff_allowed_difference + '"') else ""} \
      ~{if defined(mincontiglen_shortest_contig) then ("-L " +  '"' + mincontiglen_shortest_contig + '"') else ""} \
      ~{if defined(mincontigcvg_minimum_contig) then ("-c " +  '"' + mincontigcvg_minimum_contig + '"') else ""} \
      ~{if defined(maxcontigcvg_maximum_contig) then ("-C " +  '"' + maxcontigcvg_maximum_contig + '"') else ""} \
      ~{if defined(insertsizeupperbound_bavgins_will) then ("-b " +  '"' + insertsizeupperbound_bavgins_will + '"') else ""} \
      ~{if defined(bubblecoverage_remove_contig) then ("-B " +  '"' + bubblecoverage_remove_contig + '"') else ""} \
      ~{if defined(genomesize_genome_size) then ("-N " +  '"' + genomesize_genome_size + '"') else ""} \
      ~{if defined(number_cpu_use) then ("-p " +  '"' + number_cpu_use + '"') else ""}
  >>>
  parameter_meta {
    inputgraph_prefix_input: "inputGraph: prefix of input graph file names"
    optional_fill_gaps: "(optional)      fill gaps in scaffold, [No]"
    optional_use_mode: "(optional)      use compatible mode to build scaffold with contig produced by Version 1.05, [No]"
    optional_unmask_contigs: "(optional)      un-mask contigs with high/low coverage before scaffolding, [mask]"
    optional_structure_exists: "(optional)      if scaffold structure exists, do gapfilling only(-F), [NO]"
    optional_keep_contigs: "(optional)      keep contigs weakly connected to other contigs in scaffold, [NO]"
    optional_output_information: "(optional)      output information for Hawkeye to visualize the assembly, [NO]"
    gaplendiff_allowed_difference: "gapLenDiff: allowed length difference between estimated and filled gap, [50]"
    mincontiglen_shortest_contig: "minContigLen: shortest contig for scaffolding, [K+2]"
    mincontigcvg_minimum_contig: "minContigCvg: minimum contig coverage (c*avgCvg), contigs shorter than 100bp with coverage smaller than c*avgCvg will be masked before scaffolding unless -u is set, [0.1]"
    maxcontigcvg_maximum_contig: "maxContigCvg: maximum contig coverage (C*avgCvg), contigs with coverage larger than C*avgCvg or contigs shorter than 100bp with coverage larger than 0.8*C*avgCvg will be masked before scaffolding unless -u is set, [2]"
    insertsizeupperbound_bavgins_will: "insertSizeUpperBound: (b*avg_ins) will be used as upper bound of insert size for large insert size ( > 1000) when handling pair-end connections between contigs if b is set to larger than 1, [1.5]"
    bubblecoverage_remove_contig: "bubbleCoverage: remove contig with lower cvoerage in bubble structure if both contigs' coverage are smaller than bubbleCoverage*avgCvg, [0.6]"
    genomesize_genome_size: "genomeSize: genome size for statistics, [0]"
    number_cpu_use: "n_cpu: number of cpu for use, [8]"
    sc_aff: "scaff -g inputGraph [-F -z -u -S -w] [-G gapLenDiff -L minContigLen -c minContigCvg -C maxContigCvg -b insertSizeUpperBound -B bubbleCoverage -N genomeSize -p n_cpu]"
  }
  output {
    File out_stdout = stdout()
  }
}