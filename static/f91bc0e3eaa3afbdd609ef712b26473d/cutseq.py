from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Cutseq_V0_1_0 = CommandToolBuilder(tool="cutseq", base_command=["cutseq"], inputs=[ToolInput(tag="in_from", input_type=Boolean(optional=True), prefix="-from", doc=InputDocumentation(doc="integer    [Start of sequence (0)] This is the start\nposition (inclusive) of the section of the\nsequence that you wish to remove. (Any\ninteger value)")), ToolInput(tag="in_to", input_type=Boolean(optional=True), prefix="-to", doc=InputDocumentation(doc="integer    [End of sequence (0)] This is the end\nposition (inclusive) of the section of the\nsequence that you wish to remove. (Any\ninteger value)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cutseq_V0_1_0().translate("wdl", allow_empty_container=True)

