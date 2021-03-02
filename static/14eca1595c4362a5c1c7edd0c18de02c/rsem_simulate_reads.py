from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Rsem_Simulate_Reads_V0_1_0 = CommandToolBuilder(tool="rsem_simulate_reads", base_command=["rsem-simulate-reads"], inputs=[ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc=": Set seed for the random number generator used in simulation. The seed should be a 32-bit unsigned integer.")), ToolInput(tag="in_set_it_stop", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": Set it will stop outputting intermediate information.")), ToolInput(tag="in_reference_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_estimated_model_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_estimated_isoform_results", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_theta_zero", input_type=Int(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_name", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Simulate_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

