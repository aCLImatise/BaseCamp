from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dx_V0_1_0 = CommandToolBuilder(tool="dx", base_command=["dx"], inputs=[ToolInput(tag="in_env_help", input_type=Boolean(optional=True), prefix="--env-help", doc=InputDocumentation(doc="Display help message for overriding environment")), ToolInput(tag="in_variables", input_type=String(), position=0, doc=InputDocumentation(doc="--version   show program's version number and exit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_V0_1_0().translate("wdl", allow_empty_container=True)

