from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Deepac_Getmodels_V0_1_0 = CommandToolBuilder(tool="deepac_getmodels", base_command=["deepac", "getmodels"], inputs=[ToolInput(tag="in_debug_tf", input_type=String(optional=True), prefix="--debug-tf", doc=InputDocumentation(doc="")), ToolInput(tag="in_debug_no_eager", input_type=Boolean(optional=True), prefix="--debug-no-eager", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_deep_ac", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Getmodels_V0_1_0().translate("wdl", allow_empty_container=True)

