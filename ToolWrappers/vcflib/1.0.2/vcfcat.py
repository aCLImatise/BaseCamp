from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Vcfcat_V0_1_0 = CommandToolBuilder(tool="vcfcat", base_command=["vcfcat"], inputs=[ToolInput(tag="in_file_one", input_type=Int(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_two", input_type=Int(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfcat_V0_1_0().translate("wdl")

