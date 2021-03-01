from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fc_Calc_Cutoff_Genome_Size_V0_1_0 = CommandToolBuilder(tool="fc_calc_cutoff_genome_size", base_command=["fc_calc_cutoff", "genome_size"], inputs=[ToolInput(tag="in_coverage", input_type=String(optional=True), prefix="--coverage", doc=InputDocumentation(doc="")), ToolInput(tag="in_capture", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Calc_Cutoff_Genome_Size_V0_1_0().translate("wdl", allow_empty_container=True)

