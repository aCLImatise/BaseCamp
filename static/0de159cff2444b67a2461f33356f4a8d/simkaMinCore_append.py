from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Simkamincore_Append_V0_1_0 = CommandToolBuilder(tool="simkaMinCore_append", base_command=["simkaMinCore", "append"], inputs=[ToolInput(tag="in_in_one", input_type=Boolean(optional=True), prefix="-in1", doc=InputDocumentation(doc="(1 arg) :    first sketch file to merge (this file will be overwritten)")), ToolInput(tag="in_in_two", input_type=Boolean(optional=True), prefix="-in2", doc=InputDocumentation(doc="(1 arg) :    second sketch file to merge (this file will be appended to the first one)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simkamincore_Append_V0_1_0().translate("wdl", allow_empty_container=True)

