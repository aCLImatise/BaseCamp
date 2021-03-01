from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Dr_Disco_Bam_Extract_V0_1_0 = CommandToolBuilder(tool="dr_disco_bam_extract", base_command=["dr-disco", "bam-extract"], inputs=[ToolInput(tag="in_region_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_region_two", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_input_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dr_Disco_Bam_Extract_V0_1_0().translate("wdl", allow_empty_container=True)

