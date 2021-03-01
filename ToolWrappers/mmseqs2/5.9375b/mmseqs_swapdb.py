from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mmseqs_Swapdb_V0_1_0 = CommandToolBuilder(tool="mmseqs_swapdb", base_command=["mmseqs", "swapdb"], inputs=[ToolInput(tag="in_split_memory_limit", input_type=Boolean(optional=True), prefix="--split-memory-limit", doc=InputDocumentation(doc="0               Maximum system memory in megabyte that one split may use. Defaults (0) to all available system memory.")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="8               number of cores used for the computation (uses all cores by default)")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Swapdb_V0_1_0().translate("wdl", allow_empty_container=True)

