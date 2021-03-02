from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Lyner_Plot_V0_1_0 = CommandToolBuilder(tool="lyner_plot", base_command=["lyner", "plot"], inputs=[ToolInput(tag="in_annotation_split", input_type=File(optional=True), prefix="--annotation-split", doc=InputDocumentation(doc="RANGE"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lyner_Plot_V0_1_0().translate("wdl", allow_empty_container=True)

