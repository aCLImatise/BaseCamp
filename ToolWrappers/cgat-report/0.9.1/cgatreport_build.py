from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Cgatreport_Build_V0_1_0 = CommandToolBuilder(tool="cgatreport_build", base_command=["cgatreport-build"], inputs=[ToolInput(tag="in_num_jobs", input_type=Int(optional=True), prefix="--num-jobs", doc=InputDocumentation(doc="number of parallel jobs to run [default=2]")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="loglevel. The higher, the more output [default=10]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cgatreport_Build_V0_1_0().translate("wdl", allow_empty_container=True)

