from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Run_Adpred_V0_1_0 = CommandToolBuilder(tool="run_adpred", base_command=["run-adpred"], inputs=[ToolInput(tag="in_saturated_mutagenesis", input_type=Boolean(optional=True), prefix="--saturated-mutagenesis", doc=InputDocumentation(doc="(list of start positions separated by comma. Ends are starts+30)")), ToolInput(tag="in_output_prefix", input_type=Boolean(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="(if empty will use protein.id. if prot_id not provided it will be empty)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Adpred_V0_1_0().translate("wdl", allow_empty_container=True)

