from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pancake_Seqdb_V0_1_0 = CommandToolBuilder(tool="pancake_seqdb", base_command=["pancake", "seqdb"], inputs=[ToolInput(tag="in_compression", input_type=Boolean(optional=True), prefix="--compression", doc=InputDocumentation(doc="INT    Compression level for output sequences. [1]")), ToolInput(tag="in_buffer_size", input_type=Boolean(optional=True), prefix="--buffer-size", doc=InputDocumentation(doc="FLOAT  Sequence buffer size in megabytes. Has to be >= 0.0. [1000]")), ToolInput(tag="in_block_size", input_type=Boolean(optional=True), prefix="--block-size", doc=InputDocumentation(doc="FLOAT  Block size in megabases. Value 0 means one sequnece per block, value < 0 all sequences in\none block. [1000]")), ToolInput(tag="in_split_blocks", input_type=Boolean(optional=True), prefix="--split-blocks", doc=InputDocumentation(doc="Write seeds for each block into a separate file.")), ToolInput(tag="in_num_threads", input_type=Boolean(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="INT    Number of threads to use, 0 means autodetection. [0]")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]")), ToolInput(tag="in_log_file", input_type=Boolean(optional=True), prefix="--log-file", doc=InputDocumentation(doc="FILE   Log to a file, instead of stderr.")), ToolInput(tag="in_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="STR    The prefix of the DB files."))], outputs=[], container="quay.io/biocontainers/pbipa:1.3.2--hee625c5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pancake_Seqdb_V0_1_0().translate("wdl")

