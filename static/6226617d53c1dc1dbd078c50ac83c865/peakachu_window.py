from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, Array, String

Peakachu_Window_V0_1_0 = CommandToolBuilder(tool="peakachu_window", base_command=["peakachu", "window"], inputs=[ToolInput(tag="in_m", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=Array(t=String(), optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=Array(t=String(), optional=True), prefix="-t", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/peakachu:0.2.0--py36hc5360cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peakachu_Window_V0_1_0().translate("wdl")

