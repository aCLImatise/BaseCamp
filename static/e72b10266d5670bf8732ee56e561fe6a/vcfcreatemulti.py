from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Vcfcreatemulti_V0_1_0 = CommandToolBuilder(tool="vcfcreatemulti", base_command=["vcfcreatemulti"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfcreatemulti_V0_1_0().translate("wdl")

