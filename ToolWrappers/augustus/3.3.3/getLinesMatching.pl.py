from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Getlinesmatching_Pl_V0_1_0 = CommandToolBuilder(tool="getLinesMatching.pl", base_command=["getLinesMatching.pl"], inputs=[ToolInput(tag="in_use_complement_print", input_type=Boolean(optional=True), prefix="--v", doc=InputDocumentation(doc="Use complement. Print all lines NOT matching.")), ToolInput(tag="in_pat_from", input_type=Int(optional=True), prefix="--patfrom", doc=InputDocumentation(doc="query replace regular expression to the\nentry in the n-th column first before\nchecking for membership in the list.\nWill use the pattern s/$patfrom/$patto/\nUseful for removing modifications, e.g.\ntripping a trailing -1 before performing the\ncheck.\nBoth default to empty patterns.")), ToolInput(tag="in_whitespace", input_type=Boolean(optional=True), prefix="--whitespace", doc=InputDocumentation(doc="Split columns at whitespace rather than tab.")), ToolInput(tag="in_cat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getlinesmatching_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

