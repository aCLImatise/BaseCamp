from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Arb_2_Ascii_V0_1_0 = CommandToolBuilder(tool="arb_2_ascii", base_command=["arb_2_ascii"], inputs=[ToolInput(tag="in_r", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_source_dot_arb", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arb_2_Ascii_V0_1_0().translate("wdl", allow_empty_container=True)

