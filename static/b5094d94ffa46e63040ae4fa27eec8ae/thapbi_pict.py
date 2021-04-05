from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Thapbi_Pict_V0_1_0 = CommandToolBuilder(tool="thapbi_pict", base_command=["thapbi_pict"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/thapbi-pict:0.7.10--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Thapbi_Pict_V0_1_0().translate("wdl")

