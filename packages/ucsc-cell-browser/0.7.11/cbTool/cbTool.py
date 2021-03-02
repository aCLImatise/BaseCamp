from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Cbtool_V0_1_0 = CommandToolBuilder(tool="cbTool", base_command=["cbTool"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="show debug messages")), ToolInput(tag="in_fix_dots", input_type=Boolean(optional=True), prefix="--fixDots", doc=InputDocumentation(doc="try to fix R's mangling of various special chars to '.' in\nthe cell IDs")), ToolInput(tag="in_first", input_type=String(optional=True), prefix="--first", doc=InputDocumentation(doc="only for metaCat: names of fields to order first, comma-\nsep, e.g. disease,age. Not cellId, that's always the first\nfield")), ToolInput(tag="in_del", input_type=String(optional=True), prefix="--del", doc=InputDocumentation(doc="only for metaCat: names of fields to remove")), ToolInput(tag="in_mtx_two_tsv", input_type=Int(), position=0, doc=InputDocumentation(doc="- convert matrix market to .tsv.gz"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cbtool_V0_1_0().translate("wdl", allow_empty_container=True)

