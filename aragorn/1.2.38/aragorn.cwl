#!/usr/bin/env cwl-runner

baseCommand:
- aragorn
class: CommandLineTool
cwlVersion: v1.0
id: aragorn
inputs:
- doc: <filename>
  id: fast_a
  inputBinding:
    prefix: -fasta
  type: string
- doc: Assume that each sequence has a circular topology. Search wraps around each
    end. Default setting.
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: Assume that each sequence has a linear topology. Search does not wrap.
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: Double. Search both strands of each sequence. Default setting.
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: or -s+    Single. Do not search the complementary (antisense) strand of each
    sequence.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Single complementary. Do not search the sense strand of each sequence.
  id: sc
  inputBinding:
    prefix: -sc
  type: string
- doc: Search for tRNA genes with introns in anticodon loop with maximum length 3000
    bases. Minimum intron length is 0 bases. Ignored if -m is specified.
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: <max>       Search for tRNA genes with introns in anticodon loop with maximum
    length <max> bases. Minimum intron length is 0 bases. Ignored if -m is specified.
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: <min>,<max> Search for tRNA genes with introns in anticodon loop with maximum
    length <max> bases, and minimum length <min> bases. Ignored if -m is specified.
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: Same as -i, but allow tRNA genes with long introns to overlap shorter tRNA
    genes.
  id: io
  inputBinding:
    prefix: -io
  type: boolean
- doc: Same as -i, but fix intron between positions 37 and 38 on C-loop (one base
    after anticodon).
  id: if
  inputBinding:
    prefix: -if
  type: boolean
- doc: Same as -if and -io combined.
  id: if_o
  inputBinding:
    prefix: -ifo
  type: boolean
- doc: Same as -i, but report tRNA genes with minimum length <min> bases rather than
    search for tRNA genes with minimum length <min> bases. With this switch, <min>
    acts as an output filter, minimum intron length for searching is still 0 bases.
  id: ir
  inputBinding:
    prefix: -ir
  type: boolean
- doc: Do not search for mitochondrial TV replacement loop tRNA genes. Only relevant
    if -mt used.
  id: tv
  inputBinding:
    prefix: -tv
  type: boolean
- doc: Search for tRNA genes with 7 base C-loops only.
  id: c7
  inputBinding:
    prefix: -c7
  type: boolean
- doc: Use the stricter canonical 1-2 bp spacer1 and 1 bp spacer2. Ignored if -mt
    set. Default is to allow 3 bp spacer1 and 0-2 bp spacer2, which may degrade selectivity.
  id: ss
  inputBinding:
    prefix: -ss
  type: boolean
- doc: Display 4-base sequence on 3' end of astem regardless of predicted amino-acyl
    acceptor length.
  id: j
  inputBinding:
    prefix: -j
  type: boolean
- doc: Allow some divergence of 3' amino-acyl acceptor sequence from NCCA.
  id: jr
  inputBinding:
    prefix: -jr
  type: boolean
- doc: Allow some divergence of 3' amino-acyl acceptor sequence from NCCA, and display
    4 bases.
  id: jr4
  inputBinding:
    prefix: -jr4
  type: boolean
- doc: Print out score for each reported gene.
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: Lower scoring thresholds to 95% of default levels.
  id: ps
  inputBinding:
    prefix: -ps
  type: boolean
- doc: <num>      Change scoring thresholds to <num> percent of default levels.
  id: ps
  inputBinding:
    prefix: -ps
  type: boolean
- doc: Flag possible pseudogenes (score < 100 or tRNA anticodon loop <> 7 bases long).
    Note that genes with score < 100 will not be detected or flagged if scoring thresholds
    are not also changed to below 100% (see -ps switch).
  id: rp
  inputBinding:
    prefix: -rp
  type: boolean
- doc: <num>      Flag possible pseudogenes and change score threshold to <num> percent
    of default levels.
  id: rp
  inputBinding:
    prefix: -rp
  type: boolean
- doc: Print out primary sequence.
  id: seq
  inputBinding:
    prefix: -seq
  type: boolean
- doc: Show secondary structure of tRNA gene primary sequence using round brackets.
  id: br
  inputBinding:
    prefix: -br
  type: boolean
- doc: Print out primary sequence in fasta format.
  id: fast_a
  inputBinding:
    prefix: -fasta
  type: boolean
- doc: Print out primary sequence in fasta format only (no secondary structure).
  id: fo
  inputBinding:
    prefix: -fo
  type: boolean
- doc: Same as -fo, with sequence and gene numbering in header.
  id: f_on
  inputBinding:
    prefix: -fon
  type: boolean
- doc: Same as -fo, with no spaces in header.
  id: fos
  inputBinding:
    prefix: -fos
  type: boolean
- doc: Same as -fo, with sequence and gene numbering, but no spaces. as (<species>|<species>)
    instead of ???
  id: fons
  inputBinding:
    prefix: -fons
  type: boolean
- doc: Verbose. Prints out information during search to STDERR.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Print out tRNA domain for tmRNA genes.
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: Restrict tRNA astem length to a maximum of 7 bases
  id: a7
  inputBinding:
    prefix: -a7
  type: boolean
- doc: Display message if predicted iso-acceptor species does not match species in
    sequence name (if present).
  id: aa
  inputBinding:
    prefix: -aa
  type: boolean
- doc: <num>     Change annotated tRNA length mismatch reporting threshold to <num>
    bases when searching GENBANK files. Default is 10 bases.
  id: amt
  inputBinding:
    prefix: -amt
  type: boolean
- doc: <num>     Change annotated tmRNA length mismatch reporting threshold to <num>
    bases when searching GENBANK files. Default is 30 bases.
  id: a_mm
  inputBinding:
    prefix: -amm
  type: boolean
- doc: Dont print configuration line (which switches and files were used).
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: Repeat sequence name before summary information.
  id: rn
  inputBinding:
    prefix: -rn
  type: boolean
- doc: Print output to <outfile>. If <outfile> already exists, it is overwritten.
    By default all output goes to stdout.
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Print out in batch mode.
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: 'Same as -w, but for 6 or 8 base anticodon loops, print possible iso-acceptor
    species For tRNA genes, batch mode output is in the form: Sequence name N genes
    found 1 tRNA-<species> [locus 1] <Apos> (nnn) i(<intron position>,<intron length>)
    .           .           N tRNA-<species> [Locus N] <Apos> (nnn) i(<intron position>,<intron
    length>) N is the number of genes found <species> is the tRNA iso-acceptor species
    <Apos> is the tRNA anticodon relative position (nnn) is the tRNA anticodon base
    triplet i means the tRNA gene has a C-loop intron For tmRNA genes, output is in
    the form: n tmRNA(p) [Locus n] <tag offset>,<tag end offset> <tag peptide> p means
    the tmRNA gene is permuted'
  id: wa
  inputBinding:
    prefix: -wa
  type: boolean
- doc: Get around problem with some windows gcc compilers (found so far in Strawberry
    Perl and Active Perl) when reading Unix files. Execution speed may be slower for
    large files. Execution speed will be a lot slower for files with many small sequences.
  id: w_unix
  inputBinding:
    prefix: -wunix
  type: boolean
