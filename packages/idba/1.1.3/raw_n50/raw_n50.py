from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Raw_N50_V0_1_0 = CommandToolBuilder(tool="raw_n50", base_command=["raw_n50"], inputs=[ToolInput(tag="in_ref_length", input_type=Int(optional=True), prefix="--ref_length", doc=InputDocumentation(doc="(=0)")), ToolInput(tag="in_contigs_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Raw_N50_V0_1_0().translate("wdl", allow_empty_container=True)

