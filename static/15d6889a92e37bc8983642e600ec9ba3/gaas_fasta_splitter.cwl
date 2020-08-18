class: CommandLineTool
id: ../../../gaas_fasta_splitter.pl.cwl
inputs:
- id: fast_a
  doc: Input fasta file.
  type: string
  inputBinding:
    prefix: --fasta
- id: nb_chunks
  doc: Integer - Split the multi fasta in such amount of file. Sequences will be distributed
    evenly.
  type: boolean
  inputBinding:
    prefix: --nb_chunks
- id: nb_seq_by_chunk
  doc: Integer - Split the multi fasta in order to get such amount of sequences within
    each file.
  type: boolean
  inputBinding:
    prefix: --nb_seq_by_chunk
- id: size_seq
  doc: Integer - split sequences to be at this maximum size. When split, the suffix
    _partX will be added, where X in an incremented integer.
  type: boolean
  inputBinding:
    prefix: --size_seq
- id: overlap
  doc: Integer - overlaping part to keep between the split sequences. Used only when
    <--size_seq> option activated.
  type: boolean
  inputBinding:
    prefix: --overlap
- id: leftover
  doc: '[value: attach(default),remove,detach]. Used only when <--size_seq> option
    activated. When splitting a sequence the last chunk can be very short. attach:
    When the last chunk is more than 50% shorter of the --size_seq value we attach
    it to the previous chunk. In such case the last chunk of a split sequence can
    have as (rounded superior) maximum length: size_seq + (size_seq / 2) - 1 minimum
    length: (size_seq / 2) remove: The last chunk will be throw away if shorter than
    --size_seq value. detach: The last chunck stay as it is. In the worse case it
    can be 1 nucleotide long.'
  type: boolean
  inputBinding:
    prefix: --leftover
- id: output
  doc: Output folder. Default split_result
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_fasta_splitter.pl
