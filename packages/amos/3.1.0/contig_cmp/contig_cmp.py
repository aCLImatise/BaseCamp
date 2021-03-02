from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Contig_Cmp_V0_1_0 = CommandToolBuilder(tool="contig_cmp", base_command=["contig-cmp"], inputs=[ToolInput(tag="in_a_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_b_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Contig_Cmp_V0_1_0().translate("wdl", allow_empty_container=True)

