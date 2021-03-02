from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Cands_V0_1_0 = CommandToolBuilder(tool="cands", base_command=["cands"], inputs=[ToolInput(tag="in_t", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_that", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_will", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_contain", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_list", input_type=String(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(optional=True), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_c_and", input_type=String(optional=True), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(optional=True), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_created", input_type=String(optional=True), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_can_d_file", input_type=String(), position=9, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cands_V0_1_0().translate("wdl", allow_empty_container=True)

