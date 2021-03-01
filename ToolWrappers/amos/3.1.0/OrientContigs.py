from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Orientcontigs_V0_1_0 = CommandToolBuilder(tool="OrientContigs", base_command=["OrientContigs"], inputs=[ToolInput(tag="in_skip", input_type=Boolean(optional=True), prefix="-skip", doc=InputDocumentation(doc="")), ToolInput(tag="in_repeats", input_type=File(optional=True), prefix="-repeats", doc=InputDocumentation(doc="")), ToolInput(tag="in_redundancy", input_type=Int(optional=True), prefix="-redundancy", doc=InputDocumentation(doc="")), ToolInput(tag="in_agressive", input_type=Boolean(optional=True), prefix="-agressive", doc=InputDocumentation(doc="")), ToolInput(tag="in_no_reduce", input_type=Boolean(optional=True), prefix="-noreduce", doc=InputDocumentation(doc="")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="-all", doc=InputDocumentation(doc="")), ToolInput(tag="in_b", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_an_k", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bank_name", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orientcontigs_V0_1_0().translate("wdl", allow_empty_container=True)

