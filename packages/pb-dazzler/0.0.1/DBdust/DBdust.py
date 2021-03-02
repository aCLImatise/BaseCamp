from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dbdust_V0_1_0 = CommandToolBuilder(tool="DBdust", base_command=["DBdust"], inputs=[ToolInput(tag="in_dust_algorithm_window", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc=": DUST algorithm window size.")), ToolInput(tag="in_dust_algorithm_threshold", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": DUST algorithm threshold.")), ToolInput(tag="in_record_lowcomplexity_intervals", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": Record only low-complexity intervals >= this size.")), ToolInput(tag="in_take_composition_bias", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc=": Take into account base composition bias."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbdust_V0_1_0().translate("wdl", allow_empty_container=True)

