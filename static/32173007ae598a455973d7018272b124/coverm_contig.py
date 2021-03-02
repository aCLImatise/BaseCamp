from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Coverm_Contig_V0_1_0 = CommandToolBuilder(tool="coverm_contig", base_command=["coverm", "contig"], inputs=[ToolInput(tag="in_coupled", input_type=String(optional=True), prefix="--coupled", doc=InputDocumentation(doc="")), ToolInput(tag="in_contig_end_exclusion", input_type=String(optional=True), prefix="--contig-end-exclusion", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coverm_Contig_V0_1_0().translate("wdl", allow_empty_container=True)

