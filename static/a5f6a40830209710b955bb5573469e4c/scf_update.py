from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Scf_Update_V0_1_0 = CommandToolBuilder(tool="scf_update", base_command=["scf_update"], inputs=[ToolInput(tag="in_v", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_source", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_destination", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scf_Update_V0_1_0().translate("wdl")

