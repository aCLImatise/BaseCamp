from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Knock_Knock_Parallel_V0_1_0 = CommandToolBuilder(tool="knock_knock_parallel", base_command=["knock-knock", "parallel"], inputs=[ToolInput(tag="in_group", input_type=String(optional=True), prefix="--group", doc=InputDocumentation(doc="if specified, the single group name to process; if not\nspecified, all groups will be processed")), ToolInput(tag="in_conditions", input_type=String(optional=True), prefix="--conditions", doc=InputDocumentation(doc="if specified, conditions that samples must satisfy to\nbe processed, given as yaml; if not specified, all\nsamples will be processed")), ToolInput(tag="in_project_directory", input_type=String(), position=0, doc=InputDocumentation(doc="the base directory to store input data, reference\nannotations, and analysis output for a project")), ToolInput(tag="in_max_procs", input_type=String(), position=1, doc=InputDocumentation(doc="maximum number of samples to process at once"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Knock_Knock_Parallel_V0_1_0().translate("wdl", allow_empty_container=True)

