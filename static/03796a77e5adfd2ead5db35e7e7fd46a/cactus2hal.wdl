version 1.0

task Cactus2hal.py {
  input {
    String eventEvent
    String cacheCacheBytes
    String cacheCacheMdc
    String cacherCacherDc
    String cacheCacheW0
    String chunkChunk
    String deflateDeflate
    Boolean inInMemory
    Boolean appendAppend
    String? cactusCactusProject
    String? halHalFilePath
  }
  command <<<
    cactus2hal.py \
      ~{cactusCactusProject} \
      ~{if defined(eventEvent) then ("--event " +  '"' + eventEvent + '"') else ""} \
      ~{if defined(cacheCacheBytes) then ("--cacheBytes " +  '"' + cacheCacheBytes + '"') else ""} \
      ~{if defined(cacheCacheMdc) then ("--cacheMDC " +  '"' + cacheCacheMdc + '"') else ""} \
      ~{if defined(cacherCacherDc) then ("--cacheRDC " +  '"' + cacherCacherDc + '"') else ""} \
      ~{if defined(cacheCacheW0) then ("--cacheW0 " +  '"' + cacheCacheW0 + '"') else ""} \
      ~{if defined(chunkChunk) then ("--chunk " +  '"' + chunkChunk + '"') else ""} \
      ~{if defined(deflateDeflate) then ("--deflate " +  '"' + deflateDeflate + '"') else ""} \
      ~{true="--inMemory" false="" inInMemory} \
      ~{true="--append" false="" appendAppend} \
      ~{halHalFilePath}
  >>>
}