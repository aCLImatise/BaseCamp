from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Linknets_V0_1_0 = CommandToolBuilder(tool="linknets", base_command=["linknets"], inputs=[ToolInput(tag="in_in_units", input_type=Boolean(optional=True), prefix="-inunits", doc=InputDocumentation(doc="use copies of input units")), ToolInput(tag="in_in_connect", input_type=String(optional=True), prefix="-inconnect", doc=InputDocumentation(doc="fully connect with <n> input units")), ToolInput(tag="in_direct", input_type=Boolean(optional=True), prefix="-direct", doc=InputDocumentation(doc="connect input with output one-to-one")), ToolInput(tag="in_out_connect", input_type=String(optional=True), prefix="-outconnect", doc=InputDocumentation(doc="fully connect to <n> output units"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Linknets_V0_1_0().translate("wdl", allow_empty_container=True)

