from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Maf_Cut_V0_1_0 = CommandToolBuilder(tool="maf_cut", base_command=["maf-cut"], inputs=[ToolInput(tag="in_chr_n", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/last:1219--h2e03b76_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Cut_V0_1_0().translate("wdl")

