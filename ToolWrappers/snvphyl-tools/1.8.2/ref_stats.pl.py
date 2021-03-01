from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ref_Stats_Pl_V0_1_0 = CommandToolBuilder(tool="ref_stats.pl", base_command=["ref_stats.pl"], inputs=[ToolInput(tag="in_specify_bin_size", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="#          specify bin size for histogram (default 100)")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ref_Stats_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

