from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Singlem_Appraise_V0_1_0 = CommandToolBuilder(tool="singlem_appraise", base_command=["singlem", "appraise"], inputs=[ToolInput(tag="in_full_help", input_type=Boolean(optional=True), prefix="--full_help", doc=InputDocumentation(doc="")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Singlem_Appraise_V0_1_0().translate("wdl", allow_empty_container=True)

