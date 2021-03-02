from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Pslstats_V0_1_0 = CommandToolBuilder(tool="pslStats", base_command=["pslStats"], inputs=[ToolInput(tag="in_query_stats", input_type=Boolean(optional=True), prefix="-queryStats", doc=InputDocumentation(doc="- output per-query statistics, the default is per-alignment stats")), ToolInput(tag="in_overall_stats", input_type=Boolean(optional=True), prefix="-overallStats", doc=InputDocumentation(doc="- output overall statistics.")), ToolInput(tag="in_queries", input_type=Int(optional=True), prefix="-queries", doc=InputDocumentation(doc="- tab separated file with of expected qNames and sizes.\nIf specified, statistic will include queries that didn't align.\n")), ToolInput(tag="in_psl", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pslstats_V0_1_0().translate("wdl", allow_empty_container=True)

