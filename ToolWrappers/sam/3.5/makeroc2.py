from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Makeroc2_V0_1_0 = CommandToolBuilder(tool="makeroc2", base_command=["makeroc2"], inputs=[ToolInput(tag="in_distfile", input_type=File(optional=True), prefix="-distfile", doc=InputDocumentation(doc=".dist    Score file to read (required).")), ToolInput(tag="in_plotline", input_type=Boolean(optional=True), prefix="-plotline", doc=InputDocumentation(doc="<num>  Mark false pos/neg curves at given threshold.")), ToolInput(tag="in_option", input_type=String(optional=True), prefix="-option", doc=InputDocumentation(doc="")), ToolInput(tag="in_run_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makeroc2_V0_1_0().translate("wdl", allow_empty_container=True)

