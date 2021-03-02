from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Filter_Variations_V0_1_0 = CommandToolBuilder(tool="filter_variations", base_command=["filter-variations"], inputs=[ToolInput(tag="in_arg_maximum_allowed_distance", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --max_offset ] arg (=100)     Maximum allowed distance.")), ToolInput(tag="in_arg_maximum_allowed_difference", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="[ --max_length_diff ] arg (=20) Maximum allowed length difference.")), ToolInput(tag="in_arg_minimum_length", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[ --min_length ] arg (=10)      Minimum length of variations to be\nwritten.\n")), ToolInput(tag="in_variants_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Variations_V0_1_0().translate("wdl", allow_empty_container=True)

