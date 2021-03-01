version 1.0

task PhyloFlashFastgFishingpl {
  input {
    File? fast_g
    File? fast_a
    File? paths
    String? assembler
    File? compare_ssu
    File? out
    Boolean? cluster_only
    Int? cut_off
    Int? min_ssu_frac
    Boolean? out_fast_a
    Int? cpus
    File? bar_nap_path
    Boolean? man
  }
  command <<<
    phyloFlash_fastgFishing_pl \
      ~{if defined(fast_g) then ("--fastg " +  '"' + fast_g + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(paths) then ("--paths " +  '"' + paths + '"') else ""} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{if defined(compare_ssu) then ("--compare-ssu " +  '"' + compare_ssu + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (cluster_only) then "--clusteronly" else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(min_ssu_frac) then ("--min-SSU-frac " +  '"' + min_ssu_frac + '"') else ""} \
      ~{if (out_fast_a) then "--outfasta" else ""} \
      ~{if defined(cpus) then ("--CPUs " +  '"' + cpus + '"') else ""} \
      ~{if defined(bar_nap_path) then ("--barnap-path " +  '"' + bar_nap_path + '"') else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_g: "Input Fastg file from Megahit or Spades. NB: The de facto Fastg\\nformat used by these programs differs from the Fastg standard,\\nas described in the Bandage documentation."
    fast_a: "Input Fasta file, to convert Fastg sequence identifiers to\\ncorresponding Fasta sequence IDs.\\nIf using MEGAHIT, this is the *.contigs.fa file. For SPAdes this\\nis either the scaffolds or contigs file (after repeat\\nresolution)."
    paths: "Input Paths file, to convert EDGE to NODE identifiers, if using\\nSPAdes assembler."
    assembler: "Assembler used. Either \\\"megahit\\\" or \\\"spades\\\".\\nDefault: 'megahit'"
    compare_ssu: "If a targeted assembly of SSU rRNA has already been performed\\nfor this library, compare the sequences to those extracted from\\nthe metagenome assembly by barrnap.\\nThe sequences can be supplied either as a Fasta flie (option\\n--compare-ssu) or as a phyloFlash tar.gz archive (option\\n--compare-zip).\\nDefault: None."
    out: "Output file name prefix\\nDefault: 'test'"
    cluster_only: "Do not search for SSU rRNA sequences, instead only report all\\nconnected contig clusters above length threshold, regardless of\\nwhether they have SSU rRNA or not\\nDefault: Off"
    cut_off: "Minimum total sequence length of contig cluster to be reported\\n(Default: 100000)"
    min_ssu_frac: "Minimum fraction of SSU sequence to report (parameter passed to\\nthe '--reject' option in Barrnap)\\nDefault: 0.2"
    out_fast_a: "Logical: Output Fasta files for clusters with total length above\\ncutoff?\\nDefault: No"
    cpus: "Number of CPUs to use for Barrnap rRNA prediction\\nDefault: 8"
    bar_nap_path: "Path to barrnap executable\\nDefault: Use version bundled with phyloFlash"
    man: "Manual page"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}