from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mmseqs_Result2Stats_V0_1_0 = CommandToolBuilder(tool="mmseqs_result2stats", base_command=["mmseqs", "result2stats"], inputs=[ToolInput(tag="in_stat", input_type=Boolean(optional=True), prefix="--stat", doc=InputDocumentation(doc="can be one of: linecount, mean, doolittle, charges, seqlen, firstline.")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="8               number of cores used for the computation (uses all cores by default)")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Result2Stats_V0_1_0().translate("wdl", allow_empty_container=True)

