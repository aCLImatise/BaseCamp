from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File

Bgzip_V0_1_0 = CommandToolBuilder(tool="bgzip", base_command=["bgzip"], inputs=[ToolInput(tag="in_offset", input_type=Int(optional=True), prefix="--offset", doc=InputDocumentation(doc="decompress at virtual file pointer (0-based uncompressed offset)")), ToolInput(tag="in_stdout", input_type=Boolean(optional=True), prefix="--stdout", doc=InputDocumentation(doc="write on standard output, keep original files unchanged")), ToolInput(tag="in_decompress", input_type=Boolean(optional=True), prefix="--decompress", doc=InputDocumentation(doc="decompress")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="overwrite files without asking")), ToolInput(tag="in_index", input_type=Boolean(optional=True), prefix="--index", doc=InputDocumentation(doc="compress and create BGZF index")), ToolInput(tag="in_index_name", input_type=File(optional=True), prefix="--index-name", doc=InputDocumentation(doc="name of BGZF index file [file.gz.gzi]")), ToolInput(tag="in_compress_level", input_type=Int(optional=True), prefix="--compress-level", doc=InputDocumentation(doc="Compression level to use when compressing; 0 to 9, or -1 for default [-1]")), ToolInput(tag="in_re_index", input_type=Boolean(optional=True), prefix="--reindex", doc=InputDocumentation(doc="(re)index compressed file")), ToolInput(tag="in_reb_gzip", input_type=Boolean(optional=True), prefix="--rebgzip", doc=InputDocumentation(doc="use an index file to bgzip a file")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="decompress INT bytes (uncompressed size)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of compression threads to use [1]")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="--test", doc=InputDocumentation(doc="test integrity of compressed file")), ToolInput(tag="in_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/htslib:1.12--hd3b49d5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bgzip_V0_1_0().translate("wdl")

