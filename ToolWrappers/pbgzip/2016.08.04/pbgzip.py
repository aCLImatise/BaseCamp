from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Pbgzip_V0_1_0 = CommandToolBuilder(tool="pbgzip", base_command=["pbgzip"], inputs=[ToolInput(tag="in_write_keep_files", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="write on standard output, keep original files unchanged")), ToolInput(tag="in_decompress", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="decompress")), ToolInput(tag="in_overwrite_files_asking", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="overwrite files without asking")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="number of threads [8]")), ToolInput(tag="in_compress_type_bz", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="the compress type (0 - gz, 1 - bz2) [0]")), ToolInput(tag="in__compression_level", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc=".. -9  the compression level [-1]")), ToolInput(tag="in_block_size_when", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="the block size when reading uncompressed data (must be less than or equal to 65536; -1 is auto) [-1]")), ToolInput(tag="in_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbgzip_V0_1_0().translate("wdl", allow_empty_container=True)

