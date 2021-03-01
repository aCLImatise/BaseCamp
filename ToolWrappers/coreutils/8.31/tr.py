from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Tr_V0_1_0 = CommandToolBuilder(tool="tr", base_command=["tr"], inputs=[ToolInput(tag="in_complement", input_type=Boolean(optional=True), prefix="--complement", doc=InputDocumentation(doc="use the complement of SET1")), ToolInput(tag="in_delete", input_type=Boolean(optional=True), prefix="--delete", doc=InputDocumentation(doc="delete characters in SET1, do not translate")), ToolInput(tag="in_squeeze_repeats", input_type=Boolean(optional=True), prefix="--squeeze-repeats", doc=InputDocumentation(doc="replace each sequence of a repeated character\nthat is listed in the last specified SET,\nwith a single occurrence of that character")), ToolInput(tag="in_truncate_set_one", input_type=Boolean(optional=True), prefix="--truncate-set1", doc=InputDocumentation(doc="first truncate SET1 to length of SET2")), ToolInput(tag="in_char_one_char_two", input_type=Int(), position=0, doc=InputDocumentation(doc="all characters from CHAR1 to CHAR2 in ascending order"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tr_V0_1_0().translate("wdl", allow_empty_container=True)

