from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Dsk_V0_1_0 = CommandToolBuilder(tool="dsk", base_command=["dsk"], inputs=[ToolInput(tag="in_c", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_histo", input_type=Boolean(optional=True), prefix="-histo", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_km_er_size", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsk_V0_1_0().translate("wdl", allow_empty_container=True)

