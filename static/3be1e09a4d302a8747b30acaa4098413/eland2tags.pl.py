from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Eland2Tags_Pl_V0_1_0 = CommandToolBuilder(tool="eland2tags.pl", base_command=["eland2tags.pl"], inputs=[ToolInput(tag="in_mis", input_type=Boolean(optional=True), prefix="-mis", doc=InputDocumentation(doc="<0,1,2> (Max mismatches, default=2)")), ToolInput(tag="in_len", input_type=Boolean(optional=True), prefix="-len", doc=InputDocumentation(doc="# (only consider mismatches within the first # bp of sequence [for eland_extended]-def: 32)")), ToolInput(tag="in_uniq", input_type=Boolean(optional=True), prefix="-uniq", doc=InputDocumentation(doc="<#> (Max matches to genome for multiple eland format, default=1)")), ToolInput(tag="in_seq", input_type=Boolean(optional=True), prefix="-seq", doc=InputDocumentation(doc="(include sequence with tag)")), ToolInput(tag="in_non_uniq", input_type=Boolean(optional=True), prefix="-nonuniq", doc=InputDocumentation(doc="(include a single version of nonuniq tags, bowtie only)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Eland2Tags_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

