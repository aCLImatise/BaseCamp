from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Igvtools_V0_1_0 = CommandToolBuilder(tool="igvtools", base_command=["igvtools"], inputs=[ToolInput(tag="in_sort", input_type=String(), position=0, doc=InputDocumentation(doc="sort an alignment file by start position. ")), ToolInput(tag="in_index", input_type=String(), position=1, doc=InputDocumentation(doc="index an alignment file")), ToolInput(tag="in_to_tdf", input_type=String(), position=2, doc=InputDocumentation(doc="convert an input file (cn, gct, wig) to tiled data format (tdf)")), ToolInput(tag="in_count", input_type=String(), position=3, doc=InputDocumentation(doc="compute coverage density for an alignment file")), ToolInput(tag="in_format_exp", input_type=String(), position=4, doc=InputDocumentation(doc="center, scale, and log2 normalize an expression file")), ToolInput(tag="in_gui", input_type=String(), position=5, doc=InputDocumentation(doc="Start the gui"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igvtools_V0_1_0().translate("wdl", allow_empty_container=True)

