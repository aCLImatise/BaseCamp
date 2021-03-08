from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dumpcontigsfromheader_V0_1_0 = CommandToolBuilder(tool="dumpContigsFromHeader", base_command=["dumpContigsFromHeader"], inputs=[ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="scaffold4       1524"))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dumpcontigsfromheader_V0_1_0().translate("wdl")

