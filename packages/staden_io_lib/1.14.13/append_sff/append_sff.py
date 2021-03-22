from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Append_Sff_V0_1_0 = CommandToolBuilder(tool="append_sff", base_command=["append_sff"], inputs=[ToolInput(tag="in_add_me_dots_ff", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Append_Sff_V0_1_0().translate("wdl")

