version 1.0

task Mrsfast {
  input {
    Int? max
    String mrs_fast_ultra
    String treated
    String to
    String loaded
    String minal_dot
    String use_dot
    String t_number_cores
    String set
    String only_dot
    Int length
    String options_dot
    String maxdiscordantlength_maximum_length
    String variation
    String format_dot
    String should
    String ignored
    String is
    String please
    String fast_dot_sourceforge_dotnet
    String faraz
    String high
    String notice_thislist_conditions
    String derived
    String mission_dot
    String ular
    String negligence
  }
  command <<<
    mrsfast \
      ~{mrs_fast_ultra} \
      ~{treated} \
      ~{to} \
      ~{loaded} \
      ~{minal_dot} \
      ~{use_dot} \
      ~{t_number_cores} \
      ~{set} \
      ~{only_dot} \
      ~{length} \
      ~{options_dot} \
      ~{maxdiscordantlength_maximum_length} \
      ~{variation} \
      ~{format_dot} \
      ~{should} \
      ~{ignored} \
      ~{is} \
      ~{please} \
      ~{fast_dot_sourceforge_dotnet} \
      ~{faraz} \
      ~{high} \
      ~{notice_thislist_conditions} \
      ~{derived} \
      ~{mission_dot} \
      ~{ular} \
      ~{negligence} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""}
  >>>
  parameter_meta {
    max: "$ ./mrsfast --search refgen.fasta --pe --seq1 first-mates.fastq  --seq2\\nsecond-mates.fastq -e 3 --threads 4\\n$  ./mrsfast --search refgen.fasta --pe --seq1 first-mates.fastq --seq2\\nsecond-mates.fastq --min 100 --max 400 --best -o output\\nDiscordant mapping:\\n$  ./mrsfast   --search   refgen.fasta   --pe   --discordant-vh   --seq\\nreads.fastq --min 100 --max 400"
    mrs_fast_ultra: "DDEESSCCRRIIPPTTIIOONN"
    treated: "sequences are not supported in this version."
    to: "install  mrsFAST-ultra, please download the source zip package from"
    loaded: "file \\\"mrsfast-ultra-3.X.X.zip\\\", change the current directory to"
    minal_dot: "The  binary  file  \\\"mrsfast\\\" will be created, which is ready to"
    use_dot: "$ unzip mrsfast-ultra-3.X.X.zip"
    t_number_cores: "_t  number  of cores for mapping the sequences (default: 1)."
    set: "the  input sequence (left mate) to _f_i_l_e_.  Paired-end option"
    only_dot: "----sseeqq22 _f_i_l_e"
    length: "will  be  calculated  if  not  provided by corresponding"
    options_dot: "----mmiinn _m_i_n_-_d_i_s_c_o_r_d_a_n_t_-_l_e_n_g_t_h"
    maxdiscordantlength_maximum_length: "_m_a_x_-_d_i_s_c_o_r_d_a_n_t_-_l_e_n_g_t_h for maximum length of concordant map-"
    variation: "Hunter / Common Law. Output will be generate in DIVET"
    format_dot: "----mmaaxx--ddiissccoorrddaanntt--ccuuttooffff _m"
    should: "be  created  from  the  dbSNP  (.vcf)  file  using  the"
    ignored: "only  if  the corresponding read location has a quality"
    is: "a  Phred-Value  base  33. The default is 53 (base call error"
    please: "report  the  bugs  through  mrsfast's  web  page at http://mrs-"
    fast_dot_sourceforge_dotnet: "AAuutthhoorrss"
    faraz: "Hach, Iman Sarrafi, Farhad Hormozdiari, Can Alkan, Evan E. Eich-"
    high: "performance  sequencing  applications\\\",  Nucl. Acids Res. (1 July"
    notice_thislist_conditions: "notice,  thislist  of  conditions  and the following dis-"
    derived: "from  this software without specific prior written per-"
    mission_dot: "THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \\\"AS"
    ular: "PURPOSE  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR"
    negligence: "OR  OTHERWISE)  ARISING  IN  ANY WAY OUT OF THE USE OF THIS"
  }
  output {
    File out_stdout = stdout()
  }
}