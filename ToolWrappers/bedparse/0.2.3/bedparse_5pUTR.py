from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bedparse_5Putr_V0_1_0 = CommandToolBuilder(tool="bedparse_5pUTR", base_command=["bedparse", "5pUTR"], inputs=[ToolInput(tag="in_bed_file", input_type=String(), position=0, doc=InputDocumentation(doc="Path to the BED file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedparse_5Putr_V0_1_0().translate("wdl", allow_empty_container=True)

