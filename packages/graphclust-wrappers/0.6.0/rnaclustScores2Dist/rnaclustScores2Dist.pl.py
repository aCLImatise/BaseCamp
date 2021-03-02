from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Rnaclustscores2Dist_Pl_V0_1_0 = CommandToolBuilder(tool="rnaclustScores2Dist.pl", base_command=["rnaclustScores2Dist.pl"], inputs=[ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="full documentation")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="be verbose")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="be quiet")), ToolInput(tag="in_quantile", input_type=Boolean(optional=True), prefix="--quantile", doc=InputDocumentation(doc="the quantile"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnaclustscores2Dist_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

