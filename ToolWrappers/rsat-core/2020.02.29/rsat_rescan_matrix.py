from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rsat_Rescan_Matrix_V0_1_0 = CommandToolBuilder(tool="rsat_rescan_matrix", base_command=["rsat", "rescan-matrix"], inputs=[ToolInput(tag="in_iterations", input_type=Boolean(optional=True), prefix="-iterations", doc=InputDocumentation(doc=") of site detection <-> matrix building. The process stops at")), ToolInput(tag="in_rescan_matrix", input_type=String(), position=0, doc=InputDocumentation(doc="[1mVERSION[0m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Rescan_Matrix_V0_1_0().translate("wdl", allow_empty_container=True)

