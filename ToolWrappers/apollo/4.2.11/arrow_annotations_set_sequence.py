from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Annotations_Set_Sequence_V0_1_0 = CommandToolBuilder(tool="arrow_annotations_set_sequence", base_command=["arrow", "annotations", "set_sequence"], inputs=[ToolInput(tag="in_organism", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Annotations_Set_Sequence_V0_1_0().translate("wdl")

