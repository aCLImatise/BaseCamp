from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dx_Jobutil_Dxlink_V0_1_0 = CommandToolBuilder(tool="dx_jobutil_dxlink", base_command=["dx-jobutil-dxlink"], inputs=[ToolInput(tag="in_object", input_type=String(), position=0, doc=InputDocumentation(doc="Data object ID or '<Project ID>:<Data object ID>' to package\ninto a DNAnexus link"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Jobutil_Dxlink_V0_1_0().translate("wdl", allow_empty_container=True)

