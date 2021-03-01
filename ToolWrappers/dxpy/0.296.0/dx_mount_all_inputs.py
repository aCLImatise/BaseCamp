from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dx_Mount_All_Inputs_V0_1_0 = CommandToolBuilder(tool="dx_mount_all_inputs", base_command=["dx-mount-all-inputs"], inputs=[ToolInput(tag="in_except", input_type=String(optional=True), prefix="--except", doc=InputDocumentation(doc="Do not mount the input with this name. (May be used\nmultiple times.)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Mount_All_Inputs_V0_1_0().translate("wdl", allow_empty_container=True)

