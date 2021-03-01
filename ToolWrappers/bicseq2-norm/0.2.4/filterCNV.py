from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Filtercnv_V0_1_0 = CommandToolBuilder(tool="filterCNV", base_command=["filterCNV"], inputs=[ToolInput(tag="in_cnv_region_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_count_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_chrom_name", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filtercnv_V0_1_0().translate("wdl", allow_empty_container=True)

