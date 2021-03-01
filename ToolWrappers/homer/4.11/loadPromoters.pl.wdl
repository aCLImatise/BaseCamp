version 1.0

task LoadPromoterspl {
  input {
    String? name
    String? org
    String? id
    Boolean? force
    Boolean? keep_acc_ver
    Boolean? version
    Int? redundantcpg_analysis_start
    Int? ae
    File? genome
    File? tss
    Int? size
    Boolean? dist
    File? fast_a
    Boolean? offset
    String required_parameters_dot_dot_dot
  }
  command <<<
    loadPromoters_pl \
      ~{required_parameters_dot_dot_dot} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(org) then ("-org " +  '"' + org + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (keep_acc_ver) then "-keepAccVer" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if defined(redundantcpg_analysis_start) then ("-as " +  '"' + redundantcpg_analysis_start + '"') else ""} \
      ~{if defined(ae) then ("-ae " +  '"' + ae + '"') else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if defined(tss) then ("-tss " +  '"' + tss + '"') else ""} \
      ~{if defined(size) then ("-size " +  '"' + size + '"') else ""} \
      ~{if (dist) then "-dist" else ""} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (offset) then "-offset" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: "(used to refer to it later with findMotifs.pl)"
    org: "(Name of organism, ok to set to 'null' if not in HOMER)"
    id: "(specify one: gene, refseq, unigene, ensembl or custom)"
    force: "(Overwrite existing promoter set definition)"
    keep_acc_ver: "(By default, promoter IDs with an accession version number will be\\ntrimmed off - i.e. NM_012345.2 -> NM_012345 - use this flag keep the .#)"
    version: "<version id> (Assign version, versions starting with 'v' are managed\\nby the configureHomer.pl script and my be overwritten, default: custom)"
    redundantcpg_analysis_start: "(Redundant/CpG analysis start, default: -300)"
    ae: "(Redundant/CpG analysis end, default: 50)"
    genome: "(homer genome version -OR- genome FASTA file)"
    tss: "(peak file centered on TSS positions)"
    size: "(default: 4000, i.e. +/- 2000 from the TSS)"
    dist: "<#> (Distance between promoters to consider redundant, default: 500)"
    fast_a: "(FASTA file of promoter regions)\\nEach promoter should be the same length with only the ID after each \\\">\\\"\\nFASTA Files will be considered \\\"masked\\\" so that it will be the default option"
    offset: "<#> (offset of the first base, i.e. -1000 for 1kb upstream)"
    required_parameters_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}