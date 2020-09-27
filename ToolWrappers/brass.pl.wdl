version 1.0

task Brasspl {
  input {
    Directory? outdir
    Boolean? tumour
    Boolean? normal
    Boolean? depth
    Boolean? genome
    Boolean? species
    Boolean? assembly
    Boolean? protocol
    Boolean? g_cache
    Boolean? viral
    Boolean? microbe
    Boolean? gc_bins
    Boolean? cent_tel
    Boolean? min_cn
    Boolean? repeats
    Boolean? samp_stat
    Boolean? platform
    Boolean? tum_name
    Boolean? norm_name
    Boolean? filter
    Boolean? no_clean
    Boolean? cpus
    Boolean? process
    Boolean? index
    Boolean? limit
    Boolean? man
    Boolean? version
    String optional
  }
  command <<<
    brass_pl \
      ~{optional} \
      ~{if (outdir) then "-outdir" else ""} \
      ~{if (tumour) then "-tumour" else ""} \
      ~{if (normal) then "-normal" else ""} \
      ~{if (depth) then "-depth" else ""} \
      ~{if (genome) then "-genome" else ""} \
      ~{if (species) then "-species" else ""} \
      ~{if (assembly) then "-assembly" else ""} \
      ~{if (protocol) then "-protocol" else ""} \
      ~{if (g_cache) then "-g_cache" else ""} \
      ~{if (viral) then "-viral" else ""} \
      ~{if (microbe) then "-microbe" else ""} \
      ~{if (gc_bins) then "-gcbins" else ""} \
      ~{if (cent_tel) then "-centtel" else ""} \
      ~{if (min_cn) then "-mincn" else ""} \
      ~{if (repeats) then "-repeats" else ""} \
      ~{if (samp_stat) then "-sampstat" else ""} \
      ~{if (platform) then "-platform" else ""} \
      ~{if (tum_name) then "-tum_name" else ""} \
      ~{if (norm_name) then "-norm_name" else ""} \
      ~{if (filter) then "-filter" else ""} \
      ~{if (no_clean) then "-noclean" else ""} \
      ~{if (cpus) then "-cpus" else ""} \
      ~{if (process) then "-process" else ""} \
      ~{if (index) then "-index" else ""} \
      ~{if (limit) then "-limit" else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    outdir: "-o   Folder to output result to."
    tumour: "-t   Tumour BAM file"
    normal: "-n   Normal BAM file"
    depth: "-d   Regions of excessive sequencing depth to be ignored"
    genome: "-g   Genome fasta file"
    species: "-s   Species name"
    assembly: "Assembly name"
    protocol: "Sequencing protocol (WGS|WXS|RNA)"
    g_cache: "-gc  Genome cache file."
    viral: "-vi  Virus sequences from NCBI"
    microbe: "-mi  Microbe sequences file prefix from NCBI, please exclude '.N.fa.2bit'"
    gc_bins: "-b   5 column bed coord file, col 4 number of non-N bases, col 5 GC fraction."
    cent_tel: "-ct  TSV file of usable regions of the chromosome\\nExample in perl/share/Rdefault/"
    min_cn: "-cn   Minimum CN change for copynumber_flag [0.3]."
    repeats: "-r   Repeat file, see 'make-repeat-file' (legacy)"
    samp_stat: "ASCAT sample statistics file or file containing\\nNormalContamination 0.XXXXX [0.25]\\nPloidy X.XXX [2.0]"
    platform: "Sequencing platform (when not defined in BAM header)"
    tum_name: "Tumour sample name (when not defined in BAM header)"
    norm_name: "Normal sample name (when not defined in BAM header)"
    filter: "-f   bgzip tabix-ed normal panel groups file"
    no_clean: "-x   Don't tidyup the processing areas."
    cpus: "-c   Number of cores to use. [1]\\n- recommend max 2 during 'input' process."
    process: "-p   Only process this step then exit, optionally set -index"
    index: "-i   Optionally restrict '-p' to single job"
    limit: "-l   Define with -p and -i, see below"
    man: "-m   Full documentation."
    version: "-v   Version"
    optional: "-mingroup  -j   Minimum reads to call group [2]."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}