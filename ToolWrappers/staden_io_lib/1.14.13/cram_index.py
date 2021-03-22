from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Cram_Index_V0_1_0 = CommandToolBuilder(tool="cram_index", base_command=["cram_index"], inputs=[ToolInput(tag="in_filename_dot_cram", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_dot_cram_dot_cra_i", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cram_Index_V0_1_0().translate("wdl")

