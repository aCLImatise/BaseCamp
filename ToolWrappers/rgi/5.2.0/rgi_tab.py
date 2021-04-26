from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Rgi_Tab_V0_1_0 = CommandToolBuilder(tool="rgi_tab", base_command=["rgi", "tab"], inputs=[ToolInput(tag="in_a_file", input_type=File(optional=True), prefix="--afile", doc=InputDocumentation(doc="must be a rgi json result file\n"))], outputs=[], container="quay.io/biocontainers/rgi:5.2.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Tab_V0_1_0().translate("wdl")

