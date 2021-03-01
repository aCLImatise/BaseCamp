from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Excise_Precursors_Iterative_Final_Pl_V0_1_0 = CommandToolBuilder(tool="excise_precursors_iterative_final.pl", base_command=["excise_precursors_iterative_final.pl"], inputs=[ToolInput(tag="in_output_progress_screen", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Output progress to screen"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Excise_Precursors_Iterative_Final_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

