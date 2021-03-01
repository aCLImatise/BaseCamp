from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Crtreeindexbed_V0_1_0 = CommandToolBuilder(tool="crTreeIndexBed", base_command=["crTreeIndexBed"], inputs=[ToolInput(tag="in_block_size", input_type=Int(optional=True), prefix="-blockSize", doc=InputDocumentation(doc="- number of children per node in index tree. Default 1024")), ToolInput(tag="in_items_per_slot", input_type=Int(optional=True), prefix="-itemsPerSlot", doc=InputDocumentation(doc="- number of items per index slot. Default is half block size")), ToolInput(tag="in_no_check_sort", input_type=Boolean(optional=True), prefix="-noCheckSort", doc=InputDocumentation(doc="- Don't check sorting order of in.tab")), ToolInput(tag="in_in_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crtreeindexbed_V0_1_0().translate("wdl", allow_empty_container=True)

