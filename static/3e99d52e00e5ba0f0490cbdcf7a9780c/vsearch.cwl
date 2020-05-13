class: CommandLineTool
id: vsearch.cwl
inputs:
- id: data
  doc: --db FILENAME               reference database for --uchime_ref
  type: string
  inputBinding:
    position: 0
- id: parameters
  doc: --abskew REAL               minimum abundance ratio (2.0, 16.0 for uchime3)
    --dn REAL                   'no' vote pseudo-count (1.4) --mindiffs INT              minimum
    number of differences in segment (3) * --mindiv REAL               minimum divergence
    from closest parent (0.8) * --minh REAL                 minimum score (0.28) *
    ignored in uchime2/3 --sizein                    propagate abundance annotation
    from input --self                      exclude identical labels for --uchime_ref
    --selfid                    exclude identical sequences for --uchime_ref --xn
    REAL                   'no' vote weight (8.0)
  type: string
  inputBinding:
    position: 1
- id: output
  doc: --alignwidth INT            width of alignment in uchimealn output (80) --borderline
    FILENAME       output borderline chimeric sequences to file --chimeras FILENAME         output
    chimeric sequences to file --fasta_score               include chimera score in
    fasta output --nonchimeras FILENAME      output non-chimeric sequences to file
    --relabel STRING            relabel nonchimeras with this prefix string --relabel_keep              keep
    the old label after the new when relabelling --relabel_md5               relabel
    with md5 digest of normalized sequence --relabel_self              relabel with
    the sequence itself as label --relabel_sha1              relabel with sha1 digest
    of normalized sequence --sizeout                   include abundance information
    when relabelling --uchimealns FILENAME       output chimera alignments to file
    --uchimeout FILENAME        output to chimera info to tab-separated file --uchimeout5                make
    output compatible with uchime version 5 --xsize                     strip abundance
    information in output
  type: string
  inputBinding:
    position: 2
- id: output
  doc: --biomout FILENAME          filename for OTU table output in biom 1.0 format
    --centroids FILENAME        output centroid sequences to FASTA file --clusterout_id             add
    cluster id info to consout and profile files --clusterout_sort           order
    msaout, consout, profile by decr abundance --clusters STRING           output
    each cluster to a separate FASTA file --consout FILENAME          output cluster
    consensus sequences to FASTA file --mothur_shared_out FN      filename for OTU
    table output in mothur format --msaout FILENAME           output multiple seq.
    alignments to FASTA file --otutabout FILENAME        filename for OTU table output
    in classic format --profile FILENAME          output sequence profile of each
    cluster to file --relabel STRING            relabel centroids with this prefix
    string --relabel_keep              keep the old label after the new when relabelling
    --relabel_md5               relabel with md5 digest of normalized sequence --relabel_self              relabel
    with the sequence itself as label --relabel_sha1              relabel with sha1
    digest of normalized sequence --sizeorder                 sort accepted centroids
    by abundance, AGC --sizeout                   write cluster abundances to centroid
    file --uc FILENAME               specify filename for UCLUST-like output --xsize                     strip
    abundance information in output
  type: string
  inputBinding:
    position: 0
- id: parameters
  doc: --sff_clip                  clip ends of sequences as indicated in file (no)
    --fastq_asciiout INT        FASTQ output quality score ASCII base char (33) --fastq_qmaxout
    INT         maximum base quality value for FASTQ output (41) --fastq_qminout INT         minimum
    base quality value for FASTQ output (0)
  type: string
  inputBinding:
    position: 0
- id: output
  doc: --fastqout FILENAME         output converted sequences to given FASTQ file
  type: string
  inputBinding:
    position: 1
- id: parameters
  doc: --maxuniquesize INT         maximum abundance for output from dereplication
    --minuniquesize INT         minimum abundance for output from dereplication --sizein                    propagate
    abundance annotation from input --strand plus|both          dereplicate plus or
    both strands (plus)
  type: string
  inputBinding:
    position: 0
- id: output
  doc: --output FILENAME           output FASTA file --relabel STRING            relabel
    with this prefix string --relabel_keep              keep the old label after the
    new when relabelling --relabel_md5               relabel with md5 digest of normalized
    sequence --relabel_self              relabel with the sequence itself as label
    --relabel_sha1              relabel with sha1 digest of normalized sequence --sizeout                   write
    abundance annotation to output --topn INT                  output only n most
    abundant sequences after derep --uc FILENAME               filename for UCLUST-like
    dereplication output --xsize                     strip abundance information in
    derep output
  type: string
  inputBinding:
    position: 1
- id: parameters
  doc: --fastq_ascii INT           FASTQ input quality score ASCII base char (33)
    --fastq_asciiout INT        FASTQ output quality score ASCII base char (33) --fastq_qmax
    INT            maximum base quality value for FASTQ input (41) --fastq_qmaxout
    INT         maximum base quality value for FASTQ output (41) --fastq_qmin INT            minimum
    base quality value for FASTQ input (0) --fastq_qminout INT         minimum base
    quality value for FASTQ output (0)
  type: string
  inputBinding:
    position: 0
- id: output
  doc: --fastqout FILENAME         FASTQ output filename for converted sequences
  type: string
  inputBinding:
    position: 1
- id: parameters
  doc: --fastq_tail INT            min length of tails to count for fastq_chars (4)
  type: string
  inputBinding:
    position: 0
- id: parameters
  doc: --ee_cutoffs REAL,...       fastq_eestats2 expected error cutoffs (0.5,1,2)
    --fastq_ascii INT           FASTQ input quality score ASCII base char (33) --fastq_qmax
    INT            maximum base quality value for FASTQ input (41) --fastq_qmin INT            minimum
    base quality value for FASTQ input (0) --length_cutoffs INT,INT,INT fastq_eestats2
    length (min,max,incr) (50,*,50)
  type: string
  inputBinding:
    position: 0
- id: output
  doc: --log FILENAME              output file for fastq_stats statistics --output
    FILENAME           output file for fastq_eestats(2) statistics
  type: string
  inputBinding:
    position: 1
- id: parameters
  doc: --fastq_ascii INT           FASTQ input quality score ASCII base char (33)
    --fastq_qmax INT            maximum base quality value for FASTQ input (41) --fastq_qmin
    INT            minimum base quality value for FASTQ input (0) --hardmask                  mask
    by replacing with N instead of lower case --max_unmasked_pct          max unmasked
    % of sequences to keep (100.0) --min_unmasked_pct          min unmasked % of sequences
    to keep (0.0) --qmask none|dust|soft      mask seqs with dust, soft or no method
    (dust)
  type: string
  inputBinding:
    position: 0
- id: output
  doc: --fastaout FILENAME         output to specified FASTA file --fastqout FILENAME         output
    to specified FASTQ file
  type: string
  inputBinding:
    position: 1
- id: parameters
  doc: --hardmask                  mask by replacing with N instead of lower case
    --qmask none|dust|soft      mask seqs with dust, soft or no method (dust)
  type: string
  inputBinding:
    position: 0
- id: output
  doc: --output FILENAME           output to specified FASTA file
  type: string
  inputBinding:
    position: 1
- id: data
  doc: --reverse FILENAME          specify FASTQ file with reverse reads --join_padgap
    STRING        sequence string used for padding (NNNNNNNN) --join_padgapq STRING       quality
    string used for padding (IIIIIIII)
  type: string
  inputBinding:
    position: 0
- id: output
  doc: --fastaout FILENAME         FASTA output filename for joined sequences --fastqout
    FILENAME         FASTQ output filename for joined sequences
  type: string
  inputBinding:
    position: 1
- id: data
  doc: --reverse FILENAME          specify FASTQ file with reverse reads
  type: string
  inputBinding:
    position: 0
- id: parameters
  doc: --fastq_allowmergestagger   allow merging of staggered reads --fastq_ascii
    INT           FASTQ input quality score ASCII base char (33) --fastq_maxdiffpct
    REAL     maximum percentage diff. bases in overlap (100.0) --fastq_maxdiffs INT        maximum
    number of different bases in overlap (10) --fastq_maxee REAL          maximum
    expected error value for merged sequence --fastq_maxmergelen         maximum length
    of entire merged sequence --fastq_maxns INT           maximum number of N's --fastq_minlen
    INT          minimum input read length after truncation (1) --fastq_minmergelen         minimum
    length of entire merged sequence --fastq_minovlen            minimum length of
    overlap between reads (10) --fastq_nostagger           disallow merging of staggered
    reads (default) --fastq_qmax INT            maximum base quality value for FASTQ
    input (41) --fastq_qmaxout INT         maximum base quality value for FASTQ output
    (41) --fastq_qmin INT            minimum base quality value for FASTQ input (0)
    --fastq_qminout INT         minimum base quality value for FASTQ output (0) --fastq_truncqual
    INT       base quality value for truncation
  type: string
  inputBinding:
    position: 1
- id: output
  doc: --eetabbedout FILENAME      output error statistics to specified file --fastaout
    FILENAME         FASTA output filename for merged sequences --fastaout_notmerged_fwd
    FN FASTA filename for non-merged forward sequences --fastaout_notmerged_rev FN
    FASTA filename for non-merged reverse sequences --fastq_eeout               include
    expected errors (ee) in FASTQ output --fastqout FILENAME         FASTQ output
    filename for merged sequences --fastqout_notmerged_fwd FN FASTQ filename for non-merged
    forward sequences --fastqout_notmerged_rev FN FASTQ filename for non-merged reverse
    sequences --label_suffix              suffix to append to label of merged sequences
    --xee                       remove expected errors (ee) info from output
  type: string
  inputBinding:
    position: 2
- id: parameters
  doc: --cut_pattern STRING        pattern to match with ^ and _ at cut sites
  type: string
  inputBinding:
    position: 0
- id: output
  doc: --fastaout FILENAME         FASTA filename for fragments on forward strand
    --fastaout_rev FILENAME     FASTA filename for fragments on reverse strand --fastaout_discarded
    FN     FASTA filename for non-matching sequences --fastaout_discarded_rev FN FASTA
    filename for non-matching, reverse compl.
  type: string
  inputBinding:
    position: 1
- id: parameters
  doc: --fastq_ascii INT           FASTQ input quality score ASCII base char (33)
    --fastq_qmax INT            maximum base quality value for FASTQ input (41) --fastq_qmin
    INT            minimum base quality value for FASTQ input (0)
  type: string
  inputBinding:
    position: 0
- id: output
  doc: --fastaout FILENAME         FASTA output filename --fastqout FILENAME         FASTQ
    output filename --label_suffix STRING       label to append to identifier in the
    output
  type: string
  inputBinding:
    position: 1
- id: data
  doc: --db FILENAME               name of UDB or FASTA database for search
  type: string
  inputBinding:
    position: 0
- id: parameters
  doc: --dbmask none|dust|soft     mask db with dust, soft or no method (dust) --fulldp                    full
    dynamic programming alignment (always on) --gapext STRING             penalties
    for gap extension (2I/1E) --gapopen STRING            penalties for gap opening
    (20I/2E) --hardmask                  mask by replacing with N instead of lower
    case --id REAL                   reject if identity lower --iddef INT                 id
    definition, 0-4=CD-HIT,all,int,MBL,BLAST (2) --idprefix INT              reject
    if first n nucleotides do not match --idsuffix INT              reject if last
    n nucleotides do not match --leftjust                  reject if terminal gaps
    at alignment left end --match INT                 score for match (2) --maxaccepts
    INT            number of hits to accept and show per strand (1) --maxdiffs INT              reject
    if more substitutions or indels --maxgaps INT               reject if more indels
    --maxhits INT               maximum number of hits to show (unlimited) --maxid
    REAL                reject if identity higher --maxqsize INT              reject
    if query abundance larger --maxqt REAL                reject if query/target length
    ratio higher --maxrejects INT            number of non-matching hits to consider
    (32) --maxsizeratio REAL         reject if query/target abundance ratio higher
    --maxsl REAL                reject if shorter/longer length ratio higher --maxsubs
    INT               reject if more substitutions --mid REAL                  reject
    if percent identity lower, ignoring gaps --mincols INT               reject if
    alignment length shorter --minqt REAL                reject if query/target length
    ratio lower --minsizeratio REAL         reject if query/target abundance ratio
    lower --minsl REAL                reject if shorter/longer length ratio lower
    --mintsize INT              reject if target abundance lower --minwordmatches
    INT        minimum number of word matches required (12) --mismatch INT              score
    for mismatch (-4) --pattern STRING            option is ignored --qmask none|dust|soft      mask
    query with dust, soft or no method (dust) --query_cov REAL            reject if
    fraction of query seq. aligned lower --rightjust                 reject if terminal
    gaps at alignment right end --sizein                    propagate abundance annotation
    from input --self                      reject if labels identical --selfid                    reject
    if sequences identical --slots INT                 option is ignored --strand
    plus|both          search plus or both strands (plus) --target_cov REAL           reject
    if fraction of target seq. aligned lower --weak_id REAL              include aligned
    hits with >= id; continue search --wordlength INT            length of words for
    database index 3-15 (8)
  type: string
  inputBinding:
    position: 1
- id: output
  doc: --alnout FILENAME           filename for human-readable alignment output --biomout
    FILENAME          filename for OTU table output in biom 1.0 format --blast6out
    FILENAME        filename for blast-like tab-separated output --dbmatched FILENAME        FASTA
    file for matching database sequences --dbnotmatched FILENAME     FASTA file for
    non-matching database sequences --fastapairs FILENAME       FASTA file with pairs
    of query and target --matched FILENAME          FASTA file for matching query
    sequences --mothur_shared_out FN      filename for OTU table output in mothur
    format --notmatched FILENAME       FASTA file for non-matching query sequences
    --otutabout FILENAME        filename for OTU table output in classic format --output_no_hits            output
    non-matching queries to output files --rowlen INT                width of alignment
    lines in alnout output (64) --samheader                 include a header in the
    SAM output file --samout FILENAME           filename for SAM format output --sizeout                   write
    abundance annotation to dbmatched file --top_hits_only             output only
    hits with identity equal to the best --uc FILENAME               filename for
    UCLUST-like output --uc_allhits                show all, not just top hit with
    uc output --userfields STRING         fields to output in userout file --userout
    FILENAME          filename for user-defined tab-separated output
  type: string
  inputBinding:
    position: 2
- id: parameters
  doc: --maxsize INT               maximum abundance for sortbysize --minsize INT               minimum
    abundance for sortbysize --randseed INT              seed for PRNG, zero to use
    random data source (0) --sizein                    propagate abundance annotation
    from input
  type: string
  inputBinding:
    position: 0
- id: output
  doc: --output FILENAME           output to specified FASTA file --relabel STRING            relabel
    sequences with this prefix string --relabel_keep              keep the old label
    after the new when relabelling --relabel_md5               relabel with md5 digest
    of normalized sequence --relabel_self              relabel with the sequence itself
    as label --relabel_sha1              relabel with sha1 digest of normalized sequence
    --sizeout                   include abundance information when relabelling --topn
    INT                  output just first n sequences --xsize                     strip
    abundance information in output
  type: string
  inputBinding:
    position: 1
- id: parameters
  doc: --fastq_ascii INT           FASTQ input quality score ASCII base char (33)
    --fastq_qmax INT            maximum base quality value for FASTQ input (41) --fastq_qmin
    INT            minimum base quality value for FASTQ input (0) --randseed INT              seed
    for PRNG, zero to use random data source (0) --sample_pct REAL           sampling
    percentage between 0.0 and 100.0 --sample_size INT           sampling size --sizein                    consider
    abundance info from input, do not ignore
  type: string
  inputBinding:
    position: 0
- id: output
  doc: --fastaout FILENAME         output subsampled sequences to FASTA file --fastaout_discarded
    FILE   output non-subsampled sequences to FASTA file --fastqout FILENAME         output
    subsampled sequences to FASTQ file --fastqout_discarded        output non-subsampled
    sequences to FASTQ file --relabel STRING            relabel sequences with this
    prefix string --relabel_keep              keep the old label after the new when
    relabelling --relabel_md5               relabel with md5 digest of normalized
    sequence --relabel_self              relabel with the sequence itself as label
    --relabel_sha1              relabel with sha1 digest of normalized sequence --sizeout                   update
    abundance information in output --xsize                     strip abundance information
    in output
  type: string
  inputBinding:
    position: 1
- id: parameters
  doc: --db FILENAME               taxonomic reference db in given FASTA or UDB file
    --sintax_cutoff REAL        confidence value cutoff level (0.0)
  type: string
  inputBinding:
    position: 0
- id: output
  doc: --tabbedout FILENAME        write results to given tab-delimited file
  type: string
  inputBinding:
    position: 1
- id: parameters
  doc: --fastq_ascii INT           FASTQ input quality score ASCII base char (33)
    --fastq_maxee REAL          discard if expected error value is higher --fastq_maxee_rate
    REAL     discard if expected error rate is higher --fastq_maxlen INT          discard
    if length of sequence is longer --fastq_maxns INT           discard if number
    of N's is higher --fastq_minlen INT          discard if length of sequence is
    shorter --fastq_qmax INT            maximum base quality value for FASTQ input
    (41) --fastq_qmin INT            minimum base quality value for FASTQ input (0)
    --fastq_stripleft INT       delete given number of bases from the 5' end --fastq_stripright
    INT      delete given number of bases from the 3' end --fastq_truncee REAL        truncate
    to given maximum expected error --fastq_trunclen INT        truncate to given
    length (discard if shorter) --fastq_trunclen_keep INT   truncate to given length
    (keep if shorter) --fastq_truncqual INT       truncate to given minimum base quality
    --maxsize INT               discard if abundance of sequence is above --minsize
    INT               discard if abundance of sequence is below
  type: string
  inputBinding:
    position: 0
- id: output
  doc: --eeout                     include expected errors in output --fastaout FN               FASTA
    filename for passed sequences --fastaout_discarded FN     FASTA filename for discarded
    sequences --fastaout_discarded_rev FN FASTA filename for discarded reverse sequences
    --fastaout_rev FN           FASTA filename for passed reverse sequences --fastqout
    FN               FASTQ filename for passed sequences --fastqout_discarded FN     FASTQ
    filename for discarded sequences --fastqout_discarded_rev FN FASTQ filename for
    discarded reverse sequences --fastqout_rev FN           FASTQ filename for passed
    reverse sequences --relabel STRING            relabel filtered sequences with
    given prefix --relabel_keep              keep the old label after the new when
    relabelling --relabel_md5               relabel filtered sequences with md5 digest
    --relabel_self              relabel with the sequence itself as label --relabel_sha1              relabel
    filtered sequences with sha1 digest --sizeout                   include abundance
    information when relabelling --xee                       remove expected errors
    (ee) info from output --xsize                     strip abundance information
    in output
  type: string
  inputBinding:
    position: 1
- id: parameters
  doc: --dbmask none|dust|soft     mask db with dust, soft or no method (dust) --hardmask                  mask
    by replacing with N instead of lower case --wordlength INT            length of
    words for database index 3-15 (8)
  type: string
  inputBinding:
    position: 0
- id: output
  doc: --output FILENAME           UDB or FASTA output file
  type: string
  inputBinding:
    position: 1
- id: bzip2_decompress
  doc: decompress input with bzip2 (required if pipe)
  type: boolean
  inputBinding:
    prefix: --bzip2_decompress
- id: fast_a_width
  doc: width of FASTA seq lines, 0 for no wrap (80)
  type: long
  inputBinding:
    prefix: --fasta_width
- id: gzip_decompress
  doc: decompress input with gzip (required if pipe)
  type: boolean
  inputBinding:
    prefix: --gzip_decompress
- id: log
  doc: write messages, timing and memory info to file
  type: File
  inputBinding:
    prefix: --log
- id: max_seq_length
  doc: maximum sequence length (50000)
  type: long
  inputBinding:
    prefix: --maxseqlength
- id: min_seq_length
  doc: 'min seq length (clust/derep/search: 32, other:1)'
  type: long
  inputBinding:
    prefix: --minseqlength
- id: no_progress
  doc: do not show progress indicator
  type: boolean
  inputBinding:
    prefix: --no_progress
- id: not_run_c_labels
  doc: do not truncate labels at first space
  type: boolean
  inputBinding:
    prefix: --notrunclabels
- id: quiet
  doc: output just warnings and fatal errors to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: threads
  doc: number of threads to use, zero for all cores (0)
  type: long
  inputBinding:
    prefix: --threads
- id: cluster_fast
  doc: cluster sequences after sorting by length
  type: File
  inputBinding:
    prefix: --cluster_fast
- id: cluster_size
  doc: cluster sequences after sorting by abundance
  type: File
  inputBinding:
    prefix: --cluster_size
- id: cluster_small_mem
  doc: cluster already sorted sequences (see -usersort)
  type: File
  inputBinding:
    prefix: --cluster_smallmem
- id: cluster_u_noise
  doc: denoise Illumina amplicon reads
  type: File
  inputBinding:
    prefix: --cluster_unoise
- id: all_pairs_global
  doc: perform global alignment of all sequence pairs
  type: File
  inputBinding:
    prefix: --allpairs_global
- id: aln_out
  doc: filename for human-readable alignment output
  type: File
  inputBinding:
    prefix: --alnout
- id: accept_all
  doc: output all pairwise alignments
  type: boolean
  inputBinding:
    prefix: --acceptall
outputs: []
cwlVersion: v1.1
baseCommand:
- vsearch
