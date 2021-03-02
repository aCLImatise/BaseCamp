from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pbindex_V0_1_0 = CommandToolBuilder(tool="pbindex", base_command=["pbindex"], inputs=[ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="FILE  Input BAM file"))], outputs=[], container="quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbindex_V0_1_0().translate("wdl")

