from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Proda_V0_1_0 = CommandToolBuilder(tool="proda", base_command=["proda"], inputs=[ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="-fasta", doc=InputDocumentation(doc="")), ToolInput(tag="in_tran", input_type=Boolean(optional=True), prefix="-tran", doc=InputDocumentation(doc="")), ToolInput(tag="in_posterior", input_type=Boolean(optional=True), prefix="-posterior", doc=InputDocumentation(doc="")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="-silent", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=Int(optional=True), prefix="-L", doc=InputDocumentation(doc="")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proda_V0_1_0().translate("wdl", allow_empty_container=True)

