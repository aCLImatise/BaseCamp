from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sambamba_Validate_V0_1_0 = CommandToolBuilder(tool="sambamba_validate", base_command=["sambamba", "validate"], inputs=[ToolInput(tag="in_input_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/sambamba:0.8.0--h984e79f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sambamba_Validate_V0_1_0().translate("wdl")

