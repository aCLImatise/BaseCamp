from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mmseqs_Mergedbs_V0_1_0 = CommandToolBuilder(tool="mmseqs_mergedbs", base_command=["mmseqs", "mergedbs"], inputs=[ToolInput(tag="in_prefixes", input_type=Boolean(optional=True), prefix="--prefixes", doc=InputDocumentation(doc="Comma separated list of prefixes for each entry")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Mergedbs_V0_1_0().translate("wdl", allow_empty_container=True)

