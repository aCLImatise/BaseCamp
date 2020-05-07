version 1.0

task MerfishtoolsGenMhd4 {
  input {
    Int oneOneBits
    String notNotExpressed
  }
  command <<<
    merfishtools gen-mhd4 \
      ~{if defined(oneOneBits) then ("--onebits " +  '"' + oneOneBits + '"') else ""} \
      ~{if defined(notNotExpressed) then ("--not-expressed " +  '"' + notNotExpressed + '"') else ""}
  >>>
}