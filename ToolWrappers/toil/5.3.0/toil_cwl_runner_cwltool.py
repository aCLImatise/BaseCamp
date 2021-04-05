from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Toil_Cwl_Runner_Cwltool_V0_1_0 = CommandToolBuilder(tool="toil_cwl_runner_cwltool", base_command=["toil-cwl-runner", "cwltool"], inputs=[ToolInput(tag="in_job_store", input_type=Int(optional=True), prefix="--jobStore", doc=InputDocumentation(doc=":us-west-2:jobstore \")), ToolInput(tag="in_real_time_logging", input_type=Boolean(optional=True), prefix="--realTimeLogging", doc=InputDocumentation(doc="\")), ToolInput(tag="in_loginfo", input_type=Boolean(optional=True), prefix="--logInfo", doc=InputDocumentation(doc="\")), ToolInput(tag="in_example_job_dot_yaml", input_type=String(), position=0, doc=InputDocumentation(doc="Traceback (most recent call last):"))], outputs=[], container="quay.io/biocontainers/toil:5.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Toil_Cwl_Runner_Cwltool_V0_1_0().translate("wdl")

