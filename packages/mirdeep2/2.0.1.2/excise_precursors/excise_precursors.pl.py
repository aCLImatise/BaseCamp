from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Excise_Precursors_Pl_V0_1_0 = CommandToolBuilder(tool="excise_precursors.pl", base_command=["excise_precursors.pl"], inputs=[ToolInput(tag="in_only_excise_is", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="Only excise if the potential mature microRNA is represented\nby a number of reads equal to or higher than the integer\n(default 2).")), ToolInput(tag="in_output_progress_screen", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Output progress to screen"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Excise_Precursors_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

