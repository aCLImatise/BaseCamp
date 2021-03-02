from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Halcyon_Args_V0_1_0 = CommandToolBuilder(tool="halcyon_ARGS", base_command=["halcyon", "ARGS"], inputs=[ToolInput(tag="in_halcyon", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pyhalcyon:0.1.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Halcyon_Args_V0_1_0().translate("wdl")

