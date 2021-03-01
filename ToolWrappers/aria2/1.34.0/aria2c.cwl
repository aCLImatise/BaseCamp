class: CommandLineTool
id: aria2c.cwl
inputs:
- id: in_log
  doc: "The file name of the log file. If '-' is\nspecified, log is written to stdout.\n\
    Possible Values: /path/to/file, -\nTags: #basic"
  type: File?
  inputBinding:
    prefix: --log
- id: in_dir
  doc: "The directory to store the downloaded file.\nPossible Values: /path/to/directory\n\
    Default: /\nTags: #basic, #file"
  type: File?
  inputBinding:
    prefix: --dir
- id: in_out
  doc: "The file name of the downloaded file. It is\nalways relative to the directory\
    \ given in -d\noption. When the -Z option is used, this option\nwill be ignored.\n\
    Possible Values: /path/to/file\nTags: #basic, #http, #ftp, #file"
  type: File?
  inputBinding:
    prefix: --out
- id: in_split
  doc: "Download a file using N connections. If more\nthan N URIs are given, first\
    \ N URIs are used and\nremaining URLs are used for backup. If less than\nN URIs\
    \ are given, those URLs are used more than\nonce so that N connections total are\
    \ made\nsimultaneously. The number of connections to the\nsame host is restricted\
    \ by the\n--max-connection-per-server option. See also the\n--min-split-size option.\n\
    Possible Values: 1-*\nDefault: 5\nTags: #basic, #http, #ftp"
  type: long?
  inputBinding:
    prefix: --split
- id: in_file_allocation
  doc: "Specify file allocation method.\n'none' doesn't pre-allocate file space. 'prealloc'\n\
    pre-allocates file space before download begins.\nThis may take some time depending\
    \ on the size of\nthe file.\nIf you are using newer file systems such as ext4\n\
    (with extents support), btrfs, xfs or NTFS\n(MinGW build only), 'falloc' is your\
    \ best\nchoice. It allocates large(few GiB) files\nalmost instantly. Don't use\
    \ 'falloc' with legacy\nfile systems such as ext3 and FAT32 because it\ntakes\
    \ almost same time as 'prealloc' and it\nblocks aria2 entirely until allocation\
    \ finishes.\n'falloc' may not be available if your system\ndoesn't have posix_fallocate()\
    \ function.\n'trunc' uses ftruncate() system call or\nplatform-specific counterpart\
    \ to truncate a file\nto a specified length.\nPossible Values: none, prealloc,\
    \ trunc, falloc\nDefault: prealloc\nTags: #basic, #file"
  type: File?
  inputBinding:
    prefix: --file-allocation
- id: in_check_integrity
  doc: "[=true|false] Check file integrity by validating piece\nhashes or a hash of\
    \ entire file. This option has\neffect only in BitTorrent, Metalink downloads\n\
    with checksums or HTTP(S)/FTP downloads with\n--checksum option. If piece hashes\
    \ are provided,\nthis option can detect damaged portions of a file\nand re-download\
    \ them. If a hash of entire file is\nprovided, hash check is only done when file\
    \ has\nbeen already download. This is determined by file\nlength. If hash check\
    \ fails, file is\nre-downloaded from scratch. If both piece hashes\nand a hash\
    \ of entire file are provided, only\npiece hashes are used.\nPossible Values:\
    \ true, false\nDefault: false\nTags: #basic, #metalink, #bittorrent, #file, #checksum"
  type: boolean?
  inputBinding:
    prefix: --check-integrity
- id: in_continue
  doc: "[=true|false]  Continue downloading a partially downloaded\nfile. Use this\
    \ option to resume a download\nstarted by a web browser or another program\nwhich\
    \ downloads files sequentially from the\nbeginning. Currently this option is only\n\
    applicable to http(s)/ftp downloads.\nPossible Values: true, false\nDefault: false\n\
    Tags: #basic, #http, #ftp"
  type: boolean?
  inputBinding:
    prefix: --continue
- id: in_input_file
  doc: "Downloads URIs found in FILE. You can specify\nmultiple URIs for a single\
    \ entity: separate\nURIs on a single line using the TAB character.\nReads input\
    \ from stdin when '-' is specified.\nAdditionally, options can be specified after\
    \ each\nline of URI. This optional line must start with\none or more white spaces\
    \ and have one option per\nsingle line. See INPUT FILE section of man page\nfor\
    \ details. See also --deferred-input option.\nPossible Values: /path/to/file,\
    \ -\nTags: #basic"
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_max_concurrent_downloads
  doc: "Set maximum number of parallel downloads for\nevery static (HTTP/FTP) URL,\
    \ torrent and metalink.\nSee also --split and --optimize-concurrent-downloads\
    \ options.\nPossible Values: 1-*\nDefault: 5\nTags: #basic"
  type: long?
  inputBinding:
    prefix: --max-concurrent-downloads
- id: in_force_sequential
  doc: "[=true|false] Fetch URIs in the command-line sequentially\nand download each\
    \ URI in a separate session, like\nthe usual command-line download utilities.\n\
    Possible Values: true, false\nDefault: false\nTags: #basic"
  type: boolean?
  inputBinding:
    prefix: --force-sequential
- id: in_max_connection_per_server
  doc: "The maximum number of connections to one\nserver for each download.\nPossible\
    \ Values: 1-16\nDefault: 1\nTags: #basic, #http, #ftp"
  type: long?
  inputBinding:
    prefix: --max-connection-per-server
- id: in_min_split_size
  doc: "aria2 does not split less than 2*SIZE byte range.\nFor example, let's consider\
    \ downloading 20MiB\nfile. If SIZE is 10M, aria2 can split file into 2\nrange\
    \ [0-10MiB) and [10MiB-20MiB) and download it\nusing 2 sources(if --split >= 2,\
    \ of course).\nIf SIZE is 15M, since 2*15M > 20MiB, aria2 does\nnot split file\
    \ and download it using 1 source.\nYou can append K or M(1K = 1024, 1M = 1024K).\n\
    Possible Values: 1048576-1073741824\nDefault: 20M\nTags: #basic, #http, #ftp"
  type: long?
  inputBinding:
    prefix: --min-split-size
- id: in_ftp_user
  doc: "Set FTP user. This affects all URLs.\nTags: #basic, #ftp"
  type: string?
  inputBinding:
    prefix: --ftp-user
- id: in_ftp_passwd
  doc: "Set FTP password. This affects all URLs.\nTags: #basic, #ftp"
  type: string?
  inputBinding:
    prefix: --ftp-passwd
- id: in_http_user
  doc: "Set HTTP user. This affects all URLs.\nTags: #basic, #http"
  type: string?
  inputBinding:
    prefix: --http-user
- id: in_http_passwd
  doc: "Set HTTP password. This affects all URLs.\nTags: #basic, #http"
  type: string?
  inputBinding:
    prefix: --http-passwd
- id: in_load_cookies
  doc: "Load Cookies from FILE using the Firefox3 format\nand Mozilla/Firefox(1.x/2.x)/Netscape\
    \ format.\nPossible Values: /path/to/file\nTags: #basic, #http, #cookie"
  type: File?
  inputBinding:
    prefix: --load-cookies
- id: in_show_files
  doc: "[=true|false] Print file listing of .torrent, .meta4 and\n.metalink file and\
    \ exit. More detailed\ninformation will be listed in case of torrent\nfile.\n\
    Possible Values: true, false\nDefault: false\nTags: #basic, #metalink, #bittorrent"
  type: boolean?
  inputBinding:
    prefix: --show-files
- id: in_max_overall_upload_limit
  doc: "Set max overall upload speed in bytes/sec.\n0 means unrestricted.\nYou can\
    \ append K or M(1K = 1024, 1M = 1024K).\nTo limit the upload speed per torrent,\
    \ use\n--max-upload-limit option.\nPossible Values: 0-*\nDefault: 0\nTags: #basic,\
    \ #bittorrent"
  type: long?
  inputBinding:
    prefix: --max-overall-upload-limit
- id: in_max_upload_limit
  doc: "Set max upload speed per each torrent in\nbytes/sec. 0 means unrestricted.\n\
    You can append K or M(1K = 1024, 1M = 1024K).\nTo limit the overall upload speed,\
    \ use\n--max-overall-upload-limit option.\nPossible Values: 0-*\nDefault: 0\n\
    Tags: #basic, #bittorrent"
  type: long?
  inputBinding:
    prefix: --max-upload-limit
- id: in_torrent_file
  doc: "The path to the .torrent file.\nPossible Values: /path/to/file\nTags: #basic,\
    \ #bittorrent"
  type: File?
  inputBinding:
    prefix: --torrent-file
- id: in_listen_port
  doc: "Set TCP port number for BitTorrent downloads.\nMultiple ports can be specified\
    \ by using ',',\nfor example: \"6881,6885\". You can also use '-'\nto specify\
    \ a range: \"6881-6999\". ',' and '-' can\nbe used together.\nPossible Values:\
    \ 1024-65535\nDefault: 6881-6999\nTags: #basic, #bittorrent"
  type: long?
  inputBinding:
    prefix: --listen-port
- id: in_enable_dht
  doc: "[=true|false]    Enable IPv4 DHT functionality. It also enables\nUDP tracker\
    \ support. If a private flag is set\nin a torrent, aria2 doesn't use DHT for that\n\
    download even if ``true`` is given.\nPossible Values: true, false\nDefault: true\n\
    Tags: #basic, #bittorrent"
  type: boolean?
  inputBinding:
    prefix: --enable-dht
- id: in_dht_listen_port
  doc: "Set UDP listening port used by DHT(IPv4, IPv6)\nand UDP tracker. Multiple\
    \ ports can be specified\nby using ',', for example: \"6881,6885\". You can\n\
    also use '-' to specify a range: \"6881-6999\".\n',' and '-' can be used together.\n\
    Possible Values: 1024-65535\nDefault: 6881-6999\nTags: #basic, #bittorrent"
  type: long?
  inputBinding:
    prefix: --dht-listen-port
- id: in_enable_dht_six
  doc: "[=true|false]   Enable IPv6 DHT functionality.\nUse --dht-listen-port option\
    \ to specify port\nnumber to listen on. See also --dht-listen-addr6\noption.\n\
    Possible Values: true, false\nDefault: false\nTags: #basic, #bittorrent"
  type: boolean?
  inputBinding:
    prefix: --enable-dht6
- id: in_dht_listen_addr_six
  doc: "Specify address to bind socket for IPv6 DHT.\nIt should be a global unicast\
    \ IPv6 address of the\nhost.\nTags: #basic, #bittorrent"
  type: long?
  inputBinding:
    prefix: --dht-listen-addr6
- id: in_metalink_file
  doc: "The file path to the .meta4 and .metalink\nfile. Reads input from stdin when\
    \ '-' is\nspecified.\nPossible Values: /path/to/file, -\nTags: #basic, #metalink"
  type: File?
  inputBinding:
    prefix: --metalink-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- aria2c
