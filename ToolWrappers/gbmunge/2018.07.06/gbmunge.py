from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Gbmunge_V0_1_0 = CommandToolBuilder(tool="gbmunge", base_command=["gbmunge"], inputs=[ToolInput(tag="in_s", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gbmunge_V0_1_0().translate("wdl", allow_empty_container=True)

