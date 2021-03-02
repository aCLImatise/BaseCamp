from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Remove_Alignment_Gaps_V0_1_0 = CommandToolBuilder(tool="remove_alignment_gaps", base_command=["remove-alignment-gaps"], inputs=[ToolInput(tag="in_species", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_alignment", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Alignment_Gaps_V0_1_0().translate("wdl")

