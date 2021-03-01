from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Virmet_Tidytable_V0_1_0 = CommandToolBuilder(tool="virmet_tidytable", base_command=["virmet", "tidytable"], inputs=[ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="path to run results directory (virmet_output_...)")), ToolInput(tag="in_vir_met", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tidy_table", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Virmet_Tidytable_V0_1_0().translate("wdl", allow_empty_container=True)

