from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mmseqs_Splitdb_V0_1_0 = CommandToolBuilder(tool="mmseqs_splitdb", base_command=["mmseqs", "splitdb"], inputs=[ToolInput(tag="in_split", input_type=Boolean(optional=True), prefix="--split", doc=InputDocumentation(doc="0               Splits input sets into N equally distributed chunks. The default value sets the best split automatically. createindex can only be used with split 1.")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Splitdb_V0_1_0().translate("wdl", allow_empty_container=True)

