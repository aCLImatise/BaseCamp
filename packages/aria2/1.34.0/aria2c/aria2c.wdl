version 1.0

task Aria2c {
  input {
    File? log
    File? dir
    File? out
    Int? split
    File? file_allocation
    Boolean? check_integrity
    Boolean? continue
    File? input_file
    Int? max_concurrent_downloads
    Boolean? force_sequential
    Int? max_connection_per_server
    Int? min_split_size
    String? ftp_user
    String? ftp_passwd
    String? http_user
    String? http_passwd
    File? load_cookies
    Boolean? show_files
    Int? max_overall_upload_limit
    Int? max_upload_limit
    File? torrent_file
    Int? listen_port
    Boolean? enable_dht
    Int? dht_listen_port
    Boolean? enable_dht_six
    Int? dht_listen_addr_six
    File? metalink_file
  }
  command <<<
    aria2c \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(file_allocation) then ("--file-allocation " +  '"' + file_allocation + '"') else ""} \
      ~{if (check_integrity) then "--check-integrity" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(max_concurrent_downloads) then ("--max-concurrent-downloads " +  '"' + max_concurrent_downloads + '"') else ""} \
      ~{if (force_sequential) then "--force-sequential" else ""} \
      ~{if defined(max_connection_per_server) then ("--max-connection-per-server " +  '"' + max_connection_per_server + '"') else ""} \
      ~{if defined(min_split_size) then ("--min-split-size " +  '"' + min_split_size + '"') else ""} \
      ~{if defined(ftp_user) then ("--ftp-user " +  '"' + ftp_user + '"') else ""} \
      ~{if defined(ftp_passwd) then ("--ftp-passwd " +  '"' + ftp_passwd + '"') else ""} \
      ~{if defined(http_user) then ("--http-user " +  '"' + http_user + '"') else ""} \
      ~{if defined(http_passwd) then ("--http-passwd " +  '"' + http_passwd + '"') else ""} \
      ~{if defined(load_cookies) then ("--load-cookies " +  '"' + load_cookies + '"') else ""} \
      ~{if (show_files) then "--show-files" else ""} \
      ~{if defined(max_overall_upload_limit) then ("--max-overall-upload-limit " +  '"' + max_overall_upload_limit + '"') else ""} \
      ~{if defined(max_upload_limit) then ("--max-upload-limit " +  '"' + max_upload_limit + '"') else ""} \
      ~{if defined(torrent_file) then ("--torrent-file " +  '"' + torrent_file + '"') else ""} \
      ~{if defined(listen_port) then ("--listen-port " +  '"' + listen_port + '"') else ""} \
      ~{if (enable_dht) then "--enable-dht" else ""} \
      ~{if defined(dht_listen_port) then ("--dht-listen-port " +  '"' + dht_listen_port + '"') else ""} \
      ~{if (enable_dht_six) then "--enable-dht6" else ""} \
      ~{if defined(dht_listen_addr_six) then ("--dht-listen-addr6 " +  '"' + dht_listen_addr_six + '"') else ""} \
      ~{if defined(metalink_file) then ("--metalink-file " +  '"' + metalink_file + '"') else ""}
  >>>
  parameter_meta {
    log: "The file name of the log file. If '-' is\\nspecified, log is written to stdout.\\nPossible Values: /path/to/file, -\\nTags: #basic"
    dir: "The directory to store the downloaded file.\\nPossible Values: /path/to/directory\\nDefault: /\\nTags: #basic, #file"
    out: "The file name of the downloaded file. It is\\nalways relative to the directory given in -d\\noption. When the -Z option is used, this option\\nwill be ignored.\\nPossible Values: /path/to/file\\nTags: #basic, #http, #ftp, #file"
    split: "Download a file using N connections. If more\\nthan N URIs are given, first N URIs are used and\\nremaining URLs are used for backup. If less than\\nN URIs are given, those URLs are used more than\\nonce so that N connections total are made\\nsimultaneously. The number of connections to the\\nsame host is restricted by the\\n--max-connection-per-server option. See also the\\n--min-split-size option.\\nPossible Values: 1-*\\nDefault: 5\\nTags: #basic, #http, #ftp"
    file_allocation: "Specify file allocation method.\\n'none' doesn't pre-allocate file space. 'prealloc'\\npre-allocates file space before download begins.\\nThis may take some time depending on the size of\\nthe file.\\nIf you are using newer file systems such as ext4\\n(with extents support), btrfs, xfs or NTFS\\n(MinGW build only), 'falloc' is your best\\nchoice. It allocates large(few GiB) files\\nalmost instantly. Don't use 'falloc' with legacy\\nfile systems such as ext3 and FAT32 because it\\ntakes almost same time as 'prealloc' and it\\nblocks aria2 entirely until allocation finishes.\\n'falloc' may not be available if your system\\ndoesn't have posix_fallocate() function.\\n'trunc' uses ftruncate() system call or\\nplatform-specific counterpart to truncate a file\\nto a specified length.\\nPossible Values: none, prealloc, trunc, falloc\\nDefault: prealloc\\nTags: #basic, #file"
    check_integrity: "[=true|false] Check file integrity by validating piece\\nhashes or a hash of entire file. This option has\\neffect only in BitTorrent, Metalink downloads\\nwith checksums or HTTP(S)/FTP downloads with\\n--checksum option. If piece hashes are provided,\\nthis option can detect damaged portions of a file\\nand re-download them. If a hash of entire file is\\nprovided, hash check is only done when file has\\nbeen already download. This is determined by file\\nlength. If hash check fails, file is\\nre-downloaded from scratch. If both piece hashes\\nand a hash of entire file are provided, only\\npiece hashes are used.\\nPossible Values: true, false\\nDefault: false\\nTags: #basic, #metalink, #bittorrent, #file, #checksum"
    continue: "[=true|false]  Continue downloading a partially downloaded\\nfile. Use this option to resume a download\\nstarted by a web browser or another program\\nwhich downloads files sequentially from the\\nbeginning. Currently this option is only\\napplicable to http(s)/ftp downloads.\\nPossible Values: true, false\\nDefault: false\\nTags: #basic, #http, #ftp"
    input_file: "Downloads URIs found in FILE. You can specify\\nmultiple URIs for a single entity: separate\\nURIs on a single line using the TAB character.\\nReads input from stdin when '-' is specified.\\nAdditionally, options can be specified after each\\nline of URI. This optional line must start with\\none or more white spaces and have one option per\\nsingle line. See INPUT FILE section of man page\\nfor details. See also --deferred-input option.\\nPossible Values: /path/to/file, -\\nTags: #basic"
    max_concurrent_downloads: "Set maximum number of parallel downloads for\\nevery static (HTTP/FTP) URL, torrent and metalink.\\nSee also --split and --optimize-concurrent-downloads options.\\nPossible Values: 1-*\\nDefault: 5\\nTags: #basic"
    force_sequential: "[=true|false] Fetch URIs in the command-line sequentially\\nand download each URI in a separate session, like\\nthe usual command-line download utilities.\\nPossible Values: true, false\\nDefault: false\\nTags: #basic"
    max_connection_per_server: "The maximum number of connections to one\\nserver for each download.\\nPossible Values: 1-16\\nDefault: 1\\nTags: #basic, #http, #ftp"
    min_split_size: "aria2 does not split less than 2*SIZE byte range.\\nFor example, let's consider downloading 20MiB\\nfile. If SIZE is 10M, aria2 can split file into 2\\nrange [0-10MiB) and [10MiB-20MiB) and download it\\nusing 2 sources(if --split >= 2, of course).\\nIf SIZE is 15M, since 2*15M > 20MiB, aria2 does\\nnot split file and download it using 1 source.\\nYou can append K or M(1K = 1024, 1M = 1024K).\\nPossible Values: 1048576-1073741824\\nDefault: 20M\\nTags: #basic, #http, #ftp"
    ftp_user: "Set FTP user. This affects all URLs.\\nTags: #basic, #ftp"
    ftp_passwd: "Set FTP password. This affects all URLs.\\nTags: #basic, #ftp"
    http_user: "Set HTTP user. This affects all URLs.\\nTags: #basic, #http"
    http_passwd: "Set HTTP password. This affects all URLs.\\nTags: #basic, #http"
    load_cookies: "Load Cookies from FILE using the Firefox3 format\\nand Mozilla/Firefox(1.x/2.x)/Netscape format.\\nPossible Values: /path/to/file\\nTags: #basic, #http, #cookie"
    show_files: "[=true|false] Print file listing of .torrent, .meta4 and\\n.metalink file and exit. More detailed\\ninformation will be listed in case of torrent\\nfile.\\nPossible Values: true, false\\nDefault: false\\nTags: #basic, #metalink, #bittorrent"
    max_overall_upload_limit: "Set max overall upload speed in bytes/sec.\\n0 means unrestricted.\\nYou can append K or M(1K = 1024, 1M = 1024K).\\nTo limit the upload speed per torrent, use\\n--max-upload-limit option.\\nPossible Values: 0-*\\nDefault: 0\\nTags: #basic, #bittorrent"
    max_upload_limit: "Set max upload speed per each torrent in\\nbytes/sec. 0 means unrestricted.\\nYou can append K or M(1K = 1024, 1M = 1024K).\\nTo limit the overall upload speed, use\\n--max-overall-upload-limit option.\\nPossible Values: 0-*\\nDefault: 0\\nTags: #basic, #bittorrent"
    torrent_file: "The path to the .torrent file.\\nPossible Values: /path/to/file\\nTags: #basic, #bittorrent"
    listen_port: "Set TCP port number for BitTorrent downloads.\\nMultiple ports can be specified by using ',',\\nfor example: \\\"6881,6885\\\". You can also use '-'\\nto specify a range: \\\"6881-6999\\\". ',' and '-' can\\nbe used together.\\nPossible Values: 1024-65535\\nDefault: 6881-6999\\nTags: #basic, #bittorrent"
    enable_dht: "[=true|false]    Enable IPv4 DHT functionality. It also enables\\nUDP tracker support. If a private flag is set\\nin a torrent, aria2 doesn't use DHT for that\\ndownload even if ``true`` is given.\\nPossible Values: true, false\\nDefault: true\\nTags: #basic, #bittorrent"
    dht_listen_port: "Set UDP listening port used by DHT(IPv4, IPv6)\\nand UDP tracker. Multiple ports can be specified\\nby using ',', for example: \\\"6881,6885\\\". You can\\nalso use '-' to specify a range: \\\"6881-6999\\\".\\n',' and '-' can be used together.\\nPossible Values: 1024-65535\\nDefault: 6881-6999\\nTags: #basic, #bittorrent"
    enable_dht_six: "[=true|false]   Enable IPv6 DHT functionality.\\nUse --dht-listen-port option to specify port\\nnumber to listen on. See also --dht-listen-addr6\\noption.\\nPossible Values: true, false\\nDefault: false\\nTags: #basic, #bittorrent"
    dht_listen_addr_six: "Specify address to bind socket for IPv6 DHT.\\nIt should be a global unicast IPv6 address of the\\nhost.\\nTags: #basic, #bittorrent"
    metalink_file: "The file path to the .meta4 and .metalink\\nfile. Reads input from stdin when '-' is\\nspecified.\\nPossible Values: /path/to/file, -\\nTags: #basic, #metalink"
  }
  output {
    File out_stdout = stdout()
  }
}