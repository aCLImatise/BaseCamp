version 1.0

task RiboSnag {
  input {
    Directory? output_directory_default
    String? name
    Int? flanking_length
    Boolean? msa_km_ers
    Boolean? skip_km_ers
    Boolean? skip_blast
    Boolean? linear
    Int? padding
    Int? verbosity
    String? title
    Boolean? clobber
    Boolean? no_rev_comp
    Boolean? just_extract
    String? msa_tool
    File? prank_exe
    File? maff_t_exe
    File? barr_nap_exe
    File? make_blast_db_exe
    String? kingdom
    File? seq_name
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
      ~{if (msa_km_ers) then "--msa_kmers" else ""} \
      ~{if (skip_km_ers) then "--skip_kmers" else ""} \
      ~{if (skip_blast) then "--skip_blast" else ""} \
      ~{if (linear) then "--linear" else ""} \
      ~{if defined(padding) then ("--padding " +  '"' + padding + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (clobber) then "--clobber" else ""} \
      ~{if (no_rev_comp) then "--no_revcomp" else ""} \
      ~{if (just_extract) then "--just_extract" else ""} \
      ~{if defined(msa_tool) then ("--msa_tool " +  '"' + msa_tool + '"') else ""} \
      ~{if defined(prank_exe) then ("--prank_exe " +  '"' + prank_exe + '"') else ""} \
      ~{if defined(maff_t_exe) then ("--mafft_exe " +  '"' + maff_t_exe + '"') else ""} \
      ~{if defined(barr_nap_exe) then ("--barrnap_exe " +  '"' + barr_nap_exe + '"') else ""} \
      ~{if defined(make_blast_db_exe) then ("--makeblastdb_exe " +  '"' + make_blast_db_exe + '"') else ""} \
      ~{if defined(kingdom) then ("--kingdom " +  '"' + kingdom + '"') else ""} \
      ~{if defined(seq_name) then ("--seq_name " +  '"' + seq_name + '"') else ""}
  >>>
  parameter_meta {
    output_directory_default: "output directory; default: /"
    name: "rename the contigs with this prefix; default: date\\n(YYYYMMDD)"
    flanking_length: "length of flanking regions, in bp; default: 1000"
    msa_km_ers: "calculate kmer similarity based on aligned sequences\\ninstead of raw sequences;default: False"
    skip_km_ers: "Just plot entropy if MSAdefault: False"
    skip_blast: "Skip running BLAST Comparisonsdefault: False"
    linear: "if the genome is not circular, and an region of\\ninterest (including flanking bits) extends past\\nchromosome end, this extends the sequence past\\nchromosome origin forward by 5kb; default: False"
    padding: "if treating as circular, this controls the length of\\nsequence added to the 5' and 3' ends to allow for\\nselecting regions that cross the chromosome's origin;\\ndefault: 5000"
    verbosity: "1 = debug(), 2 = info(), 3 = warning(), 4 = error()\\nand 5 = critical(); default: 2"
    title: "String for plot title; uses matplotlib math processing\\nfor italics (you know, the LaTeX $..$ syntax):\\nhttps://matplotlib.org/users/mathtext.html default:\\ninferred from --seq_name"
    clobber: "overwrite previous output files; default: False"
    no_rev_comp: "default returns reverse complimented seq if majority\\nof regions on reverse strand. if --no_revcomp, this is\\noverwridden; default: False"
    just_extract: "Dont bother making an MSA, calculating Shannon\\nEntropy, BLASTing, generating plots etc; just extract\\nthe regions ; default: False"
    msa_tool: "Path to PRANK executable; default: mafft"
    prank_exe: "Path to PRANK executable; default: prank"
    maff_t_exe: "Path to MAFFT executable; default: mafft"
    barr_nap_exe: "Path to barrnap executable; default: barrnap"
    make_blast_db_exe: "Path to makeblastdb executable; default: makeblastdb"
    kingdom: "kingdom for barrnap; default: bac"
    seq_name: "name of genome; default: inferred from file name, as\\nmany casesinvolve multiple contigs, etc, making\\ninference from record intractable"
    genbank_genome: "Genbank file (WITH SEQUENCE)"
    clustered_loci: "output from riboSelect"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}