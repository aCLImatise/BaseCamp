from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Sviol_V0_1_0 = CommandToolBuilder(tool="sviol", base_command=["sviol"], inputs=[ToolInput(tag="in_old", input_type=Boolean(optional=True), prefix="-old", doc=InputDocumentation(doc="Use the old AMBER formatting (pre-Amber6).\nThe 'ideal bonds' and 'ideal angles' lines have different fields\npre-AMBER6 and AMBER6.")), ToolInput(tag="in_print_distance_violations", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print out distance violations in 'verbose' mode showing\nactual values instead of a 'graphical' display.")), ToolInput(tag="in_information_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Note:  You can fit all the info on a page in landscape by using enscript."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sviol_V0_1_0().translate("wdl", allow_empty_container=True)

