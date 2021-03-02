from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Chainsplit_V0_1_0 = CommandToolBuilder(tool="chainSplit", base_command=["chainSplit"], inputs=[ToolInput(tag="in_split_query_default", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="- Split on query (default is on target)")), ToolInput(tag="in_lump", input_type=String(optional=True), prefix="-lump", doc=InputDocumentation(doc="Lump together so have only N split files.")), ToolInput(tag="in_outdir", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_chain", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chainsplit_V0_1_0().translate("wdl", allow_empty_container=True)

