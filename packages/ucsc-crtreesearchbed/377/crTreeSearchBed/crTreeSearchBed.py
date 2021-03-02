from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Crtreesearchbed_V0_1_0 = CommandToolBuilder(tool="crTreeSearchBed", base_command=["crTreeSearchBed"], inputs=[ToolInput(tag="in_file_dot_bed", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_index_do_tcr", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_chrom", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_start", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crtreesearchbed_V0_1_0().translate("wdl", allow_empty_container=True)

