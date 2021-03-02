from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Lyner_Dendro_V0_1_0 = CommandToolBuilder(tool="lyner_dendro", base_command=["lyner", "dendro"], inputs=[ToolInput(tag="in_axis", input_type=Int(optional=True), prefix="--axis", doc=InputDocumentation(doc="RANGE"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lyner_Dendro_V0_1_0().translate("wdl", allow_empty_container=True)

