version 1.0

task ProfileGottcha.pl {
  input {
    Boolean? genome_vitals
    Boolean? trim_stats
    String? prefix
  }
  command <<<
    profileGottcha.pl \
      ~{true="--genomeVitals" false="" genome_vitals} \
      ~{true="--trimStats" false="" trim_stats} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    genome_vitals: "=/home/me/indir/genomeVitals2.dmp          --treeFile=/home/me/indir/speciesTreeGI2.dmp"
    trim_stats: "=/home/me/indir/datasetXYZ_fixL30.stats.txt   --rank=all"
    prefix: "--outdir=/home/me/outdir"
  }
}