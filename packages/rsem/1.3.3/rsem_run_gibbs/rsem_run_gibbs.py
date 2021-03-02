from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsem_Run_Gibbs_V0_1_0 = CommandToolBuilder(tool="rsem_run_gibbs", base_command=["rsem-run-gibbs"], inputs=[ToolInput(tag="in_reference_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_imd_name", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_stat_name", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_burnin", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_n_samples", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_gap", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Run_Gibbs_V0_1_0().translate("wdl", allow_empty_container=True)

