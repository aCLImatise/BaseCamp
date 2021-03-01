from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mmseqs_Createdb_V0_1_0 = CommandToolBuilder(tool="mmseqs_createdb", base_command=["mmseqs", "createdb"], inputs=[ToolInput(tag="in_dont_split_seq_by_len", input_type=Boolean(optional=True), prefix="--dont-split-seq-by-len", doc=InputDocumentation(doc="true            Dont split sequences by --max-seq-len")), ToolInput(tag="in_dont_shuffle", input_type=Boolean(optional=True), prefix="--dont-shuffle", doc=InputDocumentation(doc="true            Do not shuffle input database")), ToolInput(tag="in_id_offset", input_type=Boolean(optional=True), prefix="--id-offset", doc=InputDocumentation(doc="0               numeric ids in index file are offset by this value")), ToolInput(tag="in_max_seq_len", input_type=Boolean(optional=True), prefix="--max-seq-len", doc=InputDocumentation(doc="65535           Maximum sequence length [1,32768]")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Createdb_V0_1_0().translate("wdl", allow_empty_container=True)

