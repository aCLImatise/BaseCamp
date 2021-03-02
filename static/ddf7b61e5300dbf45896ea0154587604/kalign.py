from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Kalign_V0_1_0 = CommandToolBuilder(tool="kalign", base_command=["kalign"], inputs=[ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc=": Output format. [Fasta]")), ToolInput(tag="in_reformat", input_type=Boolean(optional=True), prefix="--reformat", doc=InputDocumentation(doc=": Reformat existing alignment. [NA]")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kalign_V0_1_0().translate("wdl", allow_empty_container=True)

