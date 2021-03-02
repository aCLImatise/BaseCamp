from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float

Subread_Fullscan_V0_1_0 = CommandToolBuilder(tool="subread_fullscan", base_command=["subread-fullscan"], inputs=[ToolInput(tag="in_base_name_index", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="Base name of the index.")), ToolInput(tag="in_minimum_fraction_matched", input_type=Float(optional=True), prefix="-m", doc=InputDocumentation(doc="The minimum fraction of matched bases in the read, 0.8 by default")), ToolInput(tag="in_read_string", input_type=String(), position=0, doc=InputDocumentation(doc="The read bases."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Subread_Fullscan_V0_1_0().translate("wdl", allow_empty_container=True)

