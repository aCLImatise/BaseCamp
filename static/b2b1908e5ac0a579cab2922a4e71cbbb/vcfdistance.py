from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Vcfdistance_V0_1_0 = CommandToolBuilder(tool="vcfdistance", base_command=["vcfdistance"], inputs=[ToolInput(tag="in_custom_tag_name", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfdistance_V0_1_0().translate("wdl")

