from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Annotations_Standard____V0_1_0 = CommandToolBuilder(tool="arrow_annotations_standard...", base_command=["arrow", "annotations", "standard..."], inputs=[ToolInput(tag="in_arrow", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_annotations", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Annotations_Standard____V0_1_0().translate("wdl")

