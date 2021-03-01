from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Chromosomepaint_V0_1_0 = CommandToolBuilder(tool="ChromosomePaint", base_command=["ChromosomePaint"], inputs=[ToolInput(tag="in_string_mizbee_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="<string> : MizBee file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chromosomepaint_V0_1_0().translate("wdl", allow_empty_container=True)

