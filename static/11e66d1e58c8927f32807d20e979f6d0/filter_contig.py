from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Filter_Contig_V0_1_0 = CommandToolBuilder(tool="filter_contig", base_command=["filter_contig"], inputs=[ToolInput(tag="in_contig_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_id", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Contig_V0_1_0().translate("wdl", allow_empty_container=True)

