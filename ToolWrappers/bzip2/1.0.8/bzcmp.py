from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Bzcmp_V0_1_0 = CommandToolBuilder(tool="bzcmp", base_command=["bzcmp"], inputs=[ToolInput(tag="in_cmp_options", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bzip2:1.0.8", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bzcmp_V0_1_0().translate("wdl")

