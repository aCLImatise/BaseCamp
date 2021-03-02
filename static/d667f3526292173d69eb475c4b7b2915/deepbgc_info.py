from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Deepbgc_Info_V0_1_0 = CommandToolBuilder(tool="deepbgc_info", base_command=["deepbgc", "info"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/deepbgc:0.1.22--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepbgc_Info_V0_1_0().translate("wdl")

