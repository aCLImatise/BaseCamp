from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Cluster2Bed_Pl_V0_1_0 = CommandToolBuilder(tool="cluster2bed.pl", base_command=["cluster2bed.pl"], inputs=[ToolInput(tag="in_res", input_type=Boolean(optional=True), prefix="-res", doc=InputDocumentation(doc="<#> (resolution used to create the file, default: auto detect)")), ToolInput(tag="in_min_p", input_type=Boolean(optional=True), prefix="-minp", doc=InputDocumentation(doc="<#> (minimum % of regions in a cluster to include, default: 0.01)\n(i.e. do not output clusters containing fewer than x percent of the data")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="-name", doc=InputDocumentation(doc="(track name for UCSC)")), ToolInput(tag="in_cluster_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cluster2Bed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

