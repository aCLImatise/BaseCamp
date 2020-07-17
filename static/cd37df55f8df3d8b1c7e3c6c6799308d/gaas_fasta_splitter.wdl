version 1.0

task GaasFastaSplitter.pl {
  input {
    String? fast_a
    Boolean? nb_chunks
    Boolean? nb_seq_by_chunk
    Boolean? size_seq
    Boolean? overlap
    Boolean? leftover
    String? output_folder_default
  }
  command <<<
    gaas_fasta_splitter.pl \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--nb_chunks" false="" nb_chunks} \
      ~{true="--nb_seq_by_chunk" false="" nb_seq_by_chunk} \
      ~{true="--size_seq" false="" size_seq} \
      ~{true="--overlap" false="" overlap} \
      ~{true="--leftover" false="" leftover} \
      ~{if defined(output_folder_default) then ("--output " +  '"' + output_folder_default + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "Input fasta file."
    nb_chunks: "Integer - Split the multi fasta in such amount of file. Sequences will be distributed evenly."
    nb_seq_by_chunk: "Integer - Split the multi fasta in order to get such amount of sequences within each file."
    size_seq: "Integer - split sequences to be at this maximum size. When split, the suffix _partX will be added, where X in an incremented integer."
    overlap: "Integer - overlaping part to keep between the split sequences. Used only when <--size_seq> option activated."
    leftover: "[value: attach(default),remove,detach]. Used only when <--size_seq> option activated. When splitting a sequence the last chunk can be very short. attach: When the last chunk is more than 50% shorter of the --size_seq value we attach it to the previous chunk. In such case the last chunk of a split sequence can have as (rounded superior) maximum length: size_seq + (size_seq / 2) - 1 minimum length: (size_seq / 2) remove: The last chunk will be throw away if shorter than --size_seq value. detach: The last chunck stay as it is. In the worse case it can be 1 nucleotide long."
    output_folder_default: "Output folder. Default split_result"
  }
}