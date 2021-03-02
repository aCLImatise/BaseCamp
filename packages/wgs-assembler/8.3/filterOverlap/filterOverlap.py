from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Filteroverlap_V0_1_0 = CommandToolBuilder(tool="filterOverlap", base_command=["filterOverlap"], inputs=[ToolInput(tag="in_ovl", input_type=Boolean(optional=True), prefix="-ovl", doc=InputDocumentation(doc="-- overlaps are OVL")), ToolInput(tag="in_obt", input_type=Boolean(optional=True), prefix="-obt", doc=InputDocumentation(doc="-- overlaps are OBT")), ToolInput(tag="in_minlength", input_type=String(optional=True), prefix="-minlength", doc=InputDocumentation(doc="-- throw out overlaps shorter than l")), ToolInput(tag="in_max_error", input_type=String(optional=True), prefix="-maxerror", doc=InputDocumentation(doc="-- throw out overlaps with more than fraction e error")), ToolInput(tag="in_no_containment", input_type=Boolean(optional=True), prefix="-nocontainment", doc=InputDocumentation(doc="-- throw out containment overlaps")), ToolInput(tag="in_no_dovetail", input_type=Boolean(optional=True), prefix="-nodovetail", doc=InputDocumentation(doc="-- throw out dovetail overlaps")), ToolInput(tag="in_gkp", input_type=String(optional=True), prefix="-gkp", doc=InputDocumentation(doc="Needed for -ovl or -nocontainment or -nodovetail"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filteroverlap_V0_1_0().translate("wdl", allow_empty_container=True)

