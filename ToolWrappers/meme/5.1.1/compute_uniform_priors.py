from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Compute_Uniform_Priors_V0_1_0 = CommandToolBuilder(tool="compute_uniform_priors", base_command=["compute-uniform-priors"], inputs=[ToolInput(tag="in_compute_uniform_prior", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_prior_value", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_psp_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compute_Uniform_Priors_V0_1_0().translate("wdl", allow_empty_container=True)

