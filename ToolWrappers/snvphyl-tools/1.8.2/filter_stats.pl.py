from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Filter_Stats_Pl_V0_1_0 = CommandToolBuilder(tool="filter_stats.pl", base_command=["filter-stats.pl"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="The psudo-alignment positions tab delimited file")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="When this option is set, the results will include all the\nentries marked as 'filtered-invalid'")), ToolInput(tag="in_filter_stats_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Stats_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

