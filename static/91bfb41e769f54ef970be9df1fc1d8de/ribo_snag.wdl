version 1.0

task RiboSnag {
  input {
    String? output_directory_default
    String? name
    String? flanking_length
    Boolean? msa_km_ers
    Boolean? skip_km_ers
    Boolean? skip_blast
    Boolean? linear
    String? padding
    String? verbosity
    String? title
    Boolean? clobber
    Boolean? no_rev_comp
    Boolean? just_extract
    String? msa_tool
    String? prank_exe
    String? maff_t_exe
    String? barr_nap_exe
    String? make_blast_db_exe
    String? kingdom
    String? seq_name
    String genbank_genome
    String clustered_loci
  }
  command <<<
    ribo snag \
      ~{genbank_genome} \
      ~{clustered_loci} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(flanking_length) then ("--flanking_length " +  '"' + flanking_length + '"') else ""} \
      ~{true="--msa_kmers" false="" msa_km_ers} \
      ~{true="--skip_kmers" false="" skip_km_ers} \
      ~{true="--skip_blast" false="" skip_blast} \
      ~{true="--linear" false="" linear} \
      ~{if defined(padding) then ("--padding " +  '"' + padding + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{true="--clobber" false="" clobber} \
      ~{true="--no_revcomp" false="" no_rev_comp} \
      ~{true="--just_extract" false="" just_extract} \
      ~{if defined(msa_tool) then ("--msa_tool " +  '"' + msa_tool + '"') else ""} \
      ~{if defined(prank_exe) then ("--prank_exe " +  '"' + prank_exe + '"') else ""} \
      ~{if defined(maff_t_exe) then ("--mafft_exe " +  '"' + maff_t_exe + '"') else ""} \
      ~{if defined(barr_nap_exe) then ("--barrnap_exe " +  '"' + barr_nap_exe + '"') else ""} \
      ~{if defined(make_blast_db_exe) then ("--makeblastdb_exe " +  '"' + make_blast_db_exe + '"') else ""} \
      ~{if defined(kingdom) then ("--kingdom " +  '"' + kingdom + '"') else ""} \
      ~{if defined(seq_name) then ("--seq_name " +  '"' + seq_name + '"') else ""}
  >>>
  parameter_meta {
    output_directory_default: "output directory; default: /tmp/tmpdvlbjbbn"
    name: "rename the contigs with this prefix; default: date (YYYYMMDD)"
    flanking_length: "length of flanking regions, in bp; default: 1000"
    msa_km_ers: "calculate kmer similarity based on aligned sequences instead of raw sequences;default: False"
    skip_km_ers: "Just plot entropy if MSAdefault: False"
    skip_blast: "Skip running BLAST Comparisonsdefault: False"
    linear: "if the genome is not circular, and an region of interest (including flanking bits) extends past chromosome end, this extends the sequence past chromosome origin forward by 5kb; default: False"
    padding: "if treating as circular, this controls the length of sequence added to the 5' and 3' ends to allow for selecting regions that cross the chromosome's origin; default: 5000"
    verbosity: "1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical(); default: 2"
    title: "String for plot title; uses matplotlib math processing for italics (you know, the LaTeX $..$ syntax): https://matplotlib.org/users/mathtext.html default: inferred from --seq_name"
    clobber: "overwrite previous output files; default: False"
    no_rev_comp: "default returns reverse complimented seq if majority of regions on reverse strand. if --no_revcomp, this is overwridden; default: False"
    just_extract: "Dont bother making an MSA, calculating Shannon Entropy, BLASTing, generating plots etc; just extract the regions ; default: False"
    msa_tool: "Path to PRANK executable; default: mafft"
    prank_exe: "Path to PRANK executable; default: prank"
    maff_t_exe: "Path to MAFFT executable; default: mafft"
    barr_nap_exe: "Path to barrnap executable; default: barrnap"
    make_blast_db_exe: "Path to makeblastdb executable; default: makeblastdb"
    kingdom: "kingdom for barrnap; default: bac"
    seq_name: "name of genome; default: inferred from file name, as many casesinvolve multiple contigs, etc, making inference from record intractable"
    genbank_genome: "Genbank file (WITH SEQUENCE)"
    clustered_loci: "output from riboSelect"
  }
}