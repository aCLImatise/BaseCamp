from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Dx_Download_All_Inputs_V0_1_0 = CommandToolBuilder(tool="dx_download_all_inputs", base_command=["dx-download-all-inputs"], inputs=[ToolInput(tag="in_except", input_type=String(optional=True), prefix="--except", doc=InputDocumentation(doc="Do not download the input with this name. (May be used\nmultiple times.)")), ToolInput(tag="in_parallel", input_type=Boolean(optional=True), prefix="--parallel", doc=InputDocumentation(doc="Download the files in parallel")), ToolInput(tag="in_sequential", input_type=Boolean(optional=True), prefix="--sequential", doc=InputDocumentation(doc="Download the files sequentially"))], outputs=[], container="quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Download_All_Inputs_V0_1_0().translate("wdl")

