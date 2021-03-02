from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bxtools_Relabel_V0_1_0 = CommandToolBuilder(tool="bxtools_relabel", base_command=["bxtools", "relabel"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Select verbosity level (0-4). Default: 0")), ToolInput(tag="in_input_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bxtools_Relabel_V0_1_0().translate("wdl", allow_empty_container=True)

