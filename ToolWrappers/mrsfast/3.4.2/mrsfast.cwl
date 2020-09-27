class: CommandLineTool
id: mrsfast.cwl
inputs:
- id: in_max
  doc: "$ ./mrsfast --search refgen.fasta --pe --seq1 first-mates.fastq  --seq2\n\
    second-mates.fastq -e 3 --threads 4\n$  ./mrsfast --search refgen.fasta --pe --seq1\
    \ first-mates.fastq --seq2\nsecond-mates.fastq --min 100 --max 400 --best -o output\n\
    Discordant mapping:\n$  ./mrsfast   --search   refgen.fasta   --pe   --discordant-vh\
    \   --seq\nreads.fastq --min 100 --max 400"
  type: long
  inputBinding:
    prefix: --max
- id: in_mrs_fast_ultra
  doc: "D\bDE\bES\bSC\bCR\bRI\bIP\bPT\bTI\bIO\bON\bN"
  type: string
  inputBinding:
    position: 0
- id: in_treated
  doc: sequences are not supported in this version.
  type: string
  inputBinding:
    position: 0
- id: in_to
  doc: install  mrsFAST-ultra, please download the source zip package from
  type: string
  inputBinding:
    position: 0
- id: in_loaded
  doc: file "mrsfast-ultra-3.X.X.zip", change the current directory to
  type: string
  inputBinding:
    position: 0
- id: in_minal_dot
  doc: The  binary  file  "mrsfast" will be created, which is ready to
  type: string
  inputBinding:
    position: 0
- id: in_use_dot
  doc: $ unzip mrsfast-ultra-3.X.X.zip
  type: string
  inputBinding:
    position: 1
- id: in_t_number_cores
  doc: "_\bt  number  of cores for mapping the sequences (default: 1)."
  type: string
  inputBinding:
    position: 0
- id: in_set
  doc: "the  input sequence (left mate) to _\bf_\bi_\bl_\be_\b.  Paired-end option"
  type: string
  inputBinding:
    position: 0
- id: in_only_dot
  doc: "-\b--\b-s\bse\beq\bq2\b2 _\bf_\bi_\bl_\be"
  type: string
  inputBinding:
    position: 1
- id: in_length
  doc: will  be  calculated  if  not  provided by corresponding
  type: long
  inputBinding:
    position: 0
- id: in_options_dot
  doc: "-\b--\b-m\bmi\bin\bn _\bm_\bi_\bn_\b-_\bd_\bi_\bs_\bc_\bo_\br_\bd_\ba_\bn_\b\
    t_\b-_\bl_\be_\bn_\bg_\bt_\bh"
  type: string
  inputBinding:
    position: 1
- id: in_maxdiscordantlength_maximum_length
  doc: "_\bm_\ba_\bx_\b-_\bd_\bi_\bs_\bc_\bo_\br_\bd_\ba_\bn_\bt_\b-_\bl_\be_\bn_\b\
    g_\bt_\bh for maximum length of concordant map-"
  type: string
  inputBinding:
    position: 0
- id: in_variation
  doc: Hunter / Common Law. Output will be generate in DIVET
  type: string
  inputBinding:
    position: 0
- id: in_format_dot
  doc: "-\b--\b-m\bma\bax\bx-\b-d\bdi\bis\bsc\bco\bor\brd\bda\ban\bnt\bt-\b-c\bcu\b\
    ut\bto\bof\bff\bf _\bm"
  type: string
  inputBinding:
    position: 1
- id: in_should
  doc: be  created  from  the  dbSNP  (.vcf)  file  using  the
  type: string
  inputBinding:
    position: 0
- id: in_ignored
  doc: only  if  the corresponding read location has a quality
  type: string
  inputBinding:
    position: 0
- id: in_is
  doc: a  Phred-Value  base  33. The default is 53 (base call error
  type: string
  inputBinding:
    position: 0
- id: in_please
  doc: report  the  bugs  through  mrsfast's  web  page at http://mrs-
  type: string
  inputBinding:
    position: 0
- id: in_fast_dot_sourceforge_dotnet
  doc: "A\bAu\but\bth\bho\bor\brs\bs"
  type: string
  inputBinding:
    position: 1
- id: in_faraz
  doc: Hach, Iman Sarrafi, Farhad Hormozdiari, Can Alkan, Evan E. Eich-
  type: string
  inputBinding:
    position: 0
- id: in_high
  doc: performance  sequencing  applications",  Nucl. Acids Res. (1 July
  type: string
  inputBinding:
    position: 0
- id: in_right
  doc: notice,  thislist  of  conditions  and the following dis-
  type: string
  inputBinding:
    position: 0
- id: in_derived
  doc: from  this software without specific prior written per-
  type: string
  inputBinding:
    position: 0
- id: in_mission_dot
  doc: THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
  type: string
  inputBinding:
    position: 1
- id: in_ular
  doc: PURPOSE  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
  type: string
  inputBinding:
    position: 0
- id: in_negligence
  doc: OR  OTHERWISE)  ARISING  IN  ANY WAY OUT OF THE USE OF THIS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mrsfast
