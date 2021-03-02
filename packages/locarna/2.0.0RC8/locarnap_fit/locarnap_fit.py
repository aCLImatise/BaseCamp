from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Boolean, File

Locarnap_Fit_V0_1_0 = CommandToolBuilder(tool="locarnap_fit", base_command=["locarnap_fit"], inputs=[ToolInput(tag="in_beta", input_type=Float(optional=True), prefix="--beta", doc=InputDocumentation(doc="(6)\nInverse temperature")), ToolInput(tag="in_once_on", input_type=Boolean(optional=True), prefix="--once-on", doc=InputDocumentation(doc="Fit a signal that is on only once")), ToolInput(tag="in_all_values", input_type=Boolean(optional=True), prefix="--all-values", doc=InputDocumentation(doc="Show all function values of signal (instead of only ranges)")), ToolInput(tag="in_penalties", input_type=File(optional=True), prefix="--penalties", doc=InputDocumentation(doc="Input penalty file with sequence of numbers"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Locarnap_Fit_V0_1_0().translate("wdl", allow_empty_container=True)

