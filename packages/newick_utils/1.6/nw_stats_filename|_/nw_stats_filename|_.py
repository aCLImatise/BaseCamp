from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Nw_Stats_Filename___V0_1_0 = CommandToolBuilder(tool="nw_stats_filename|_", base_command=["nw_stats", "filename|-"], inputs=[ToolInput(tag="in_format_l_columns", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[lc]: format in lines (l) or columns (c). Default is l."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Stats_Filename___V0_1_0().translate("wdl", allow_empty_container=True)

