from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Kill_V0_1_0 = CommandToolBuilder(tool="kill", base_command=["kill"], inputs=[ToolInput(tag="in_signal", input_type=Int(optional=True), prefix="--signal", doc=InputDocumentation(doc="specify the name or number of the signal to be sent")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="list signal names, or convert signal names to/from numbers")), ToolInput(tag="in_table", input_type=Boolean(optional=True), prefix="--table", doc=InputDocumentation(doc="print a table of signal information"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kill_V0_1_0().translate("wdl", allow_empty_container=True)

