from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Farc_V0_1_0 = CommandToolBuilder(tool="faRc", base_command=["faRc"], inputs=[ToolInput(tag="in_keep_name", input_type=Boolean(optional=True), prefix="-keepName", doc=InputDocumentation(doc="- keep name identical (don't prepend RC)")), ToolInput(tag="in_keep_case", input_type=Boolean(optional=True), prefix="-keepCase", doc=InputDocumentation(doc="- works well for ACGTUN in either case. bizarre for other letters.\nwithout it bases are turned to lower, all else to n's")), ToolInput(tag="in_just_reverse", input_type=Boolean(optional=True), prefix="-justReverse", doc=InputDocumentation(doc="- prepends R unless asked to keep name")), ToolInput(tag="in_just_complement", input_type=Boolean(optional=True), prefix="-justComplement", doc=InputDocumentation(doc="- prepends C unless asked to keep name\n(cannot appear together with -justReverse)\n")), ToolInput(tag="in_in_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Farc_V0_1_0().translate("wdl", allow_empty_container=True)

