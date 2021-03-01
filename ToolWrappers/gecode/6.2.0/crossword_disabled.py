from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Crossword_Disabled_V0_1_0 = CommandToolBuilder(tool="crossword_disabled", base_command=["crossword", "disabled"], inputs=[ToolInput(tag="in_balsa", input_type=String(), position=0, doc=InputDocumentation(doc="avail")), ToolInput(tag="in_tided", input_type=String(), position=1, doc=InputDocumentation(doc="halve")), ToolInput(tag="in_sneer", input_type=String(), position=2, doc=InputDocumentation(doc="Initial"))], outputs=[], container="quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crossword_Disabled_V0_1_0().translate("wdl")

