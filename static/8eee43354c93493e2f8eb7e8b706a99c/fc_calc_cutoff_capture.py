from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fc_Calc_Cutoff_Capture_V0_1_0 = CommandToolBuilder(tool="fc_calc_cutoff_capture", base_command=["fc_calc_cutoff", "capture"], inputs=[ToolInput(tag="in_coverage", input_type=String(optional=True), prefix="--coverage", doc=InputDocumentation(doc="")), ToolInput(tag="in_fc_calc_cut_off", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_size", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_capture", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Calc_Cutoff_Capture_V0_1_0().translate("wdl", allow_empty_container=True)

