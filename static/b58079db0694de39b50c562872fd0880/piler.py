from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Piler_V0_1_0 = CommandToolBuilder(tool="piler", base_command=["piler"], inputs=[ToolInput(tag="in_trs", input_type=String(optional=True), prefix="-trs", doc=InputDocumentation(doc=":\n-mincover <n>\n-maxlengthdiffpct <n>\n-piles <pilefile>\n-images <imagefile>\n-multihit")), ToolInput(tag="in_rep", input_type=File(optional=True), prefix="-rep", doc=InputDocumentation(doc="")), ToolInput(tag="in_an_not", input_type=String(optional=True), prefix="-annot", doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="")), ToolInput(tag="in_cons", input_type=File(optional=True), prefix="-cons", doc=InputDocumentation(doc="")), ToolInput(tag="in_path", input_type=File(optional=True), prefix="-path", doc=InputDocumentation(doc="")), ToolInput(tag="in_seq", input_type=File(optional=True), prefix="-seq", doc=InputDocumentation(doc="")), ToolInput(tag="in_trs_two_fast_a", input_type=File(optional=True), prefix="-trs2fasta", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Piler_V0_1_0().translate("wdl", allow_empty_container=True)

