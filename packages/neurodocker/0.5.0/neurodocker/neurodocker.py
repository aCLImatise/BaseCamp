from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Neurodocker_V0_1_0 = CommandToolBuilder(tool="neurodocker", base_command=["neurodocker"], inputs=[ToolInput(tag="in_var_0", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_1", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_generate", input_type=String(), position=0, doc=InputDocumentation(doc="generate recipes"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Neurodocker_V0_1_0().translate("wdl", allow_empty_container=True)

