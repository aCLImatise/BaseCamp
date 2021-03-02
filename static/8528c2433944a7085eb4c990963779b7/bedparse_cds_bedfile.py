from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Bedparse_Cds_Bedfile_V0_1_0 = CommandToolBuilder(tool="bedparse_cds_bedfile", base_command=["bedparse", "cds", "bedfile"], inputs=[ToolInput(tag="in_ignore_cds_only", input_type=Boolean(optional=True), prefix="--ignoreCDSonly", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedparse_Cds_Bedfile_V0_1_0().translate("wdl", allow_empty_container=True)

