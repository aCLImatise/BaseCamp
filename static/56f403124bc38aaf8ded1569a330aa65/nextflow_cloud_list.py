from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nextflow_Cloud_List_V0_1_0 = CommandToolBuilder(tool="nextflow_cloud_list", base_command=["nextflow", "cloud", "list"], inputs=[ToolInput(tag="in_region", input_type=Boolean(optional=True), prefix="-region", doc=InputDocumentation(doc="The region to use. Overrides config/env settings.\n")), ToolInput(tag="in_cluster_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextflow_Cloud_List_V0_1_0().translate("wdl", allow_empty_container=True)

