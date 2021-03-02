from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Errorcount_Sh_V0_1_0 = CommandToolBuilder(tool="ErrorCount.sh", base_command=["ErrorCount.sh"], inputs=[ToolInput(tag="in_individuals_equals_genotypes", input_type=Int(optional=True), prefix="-9", doc=InputDocumentation(doc="of individuals and 0 equals 0 total genotypes"))], outputs=[], container="quay.io/biocontainers/ddocent:2.8.13--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Errorcount_Sh_V0_1_0().translate("wdl")

