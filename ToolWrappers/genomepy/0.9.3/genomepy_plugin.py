from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Genomepy_Plugin_V0_1_0 = CommandToolBuilder(tool="genomepy_plugin", base_command=["genomepy", "plugin"], inputs=[ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/genomepy:0.9.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomepy_Plugin_V0_1_0().translate("wdl")

