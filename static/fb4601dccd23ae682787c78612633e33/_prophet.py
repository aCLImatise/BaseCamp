from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Prophet_V0_1_0 = CommandToolBuilder(tool="_prophet", base_command=["_prophet"], inputs=[ToolInput(tag="in_gap_open", input_type=Boolean(optional=True), prefix="-gapopen", doc=InputDocumentation(doc="float      [1.0] Gap opening coefficient (Number from\n0.000 to 100.000)")), ToolInput(tag="in_gap_extend", input_type=Boolean(optional=True), prefix="-gapextend", doc=InputDocumentation(doc="float      [1.0] Gap extension coefficient (Number from\n0.000 to 100.000)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Prophet_V0_1_0().translate("wdl", allow_empty_container=True)

