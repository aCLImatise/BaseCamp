from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Fastx_Artifacts_Filter_V0_1_0 = CommandToolBuilder(tool="fastx_artifacts_filter", base_command=["fastx_artifacts_filter"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_z", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastx_Artifacts_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

