from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Start_Parallel_Picrust_Jobs_Py_V0_1_0 = CommandToolBuilder(tool="start_parallel_picrust_jobs.py", base_command=["start_parallel_picrust_jobs.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_make_jobs", input_type=Boolean(optional=True), prefix="--make_jobs", doc=InputDocumentation(doc="make the job files [default: none]")), ToolInput(tag="in_submit_jobs", input_type=Boolean(optional=True), prefix="--submit_jobs", doc=InputDocumentation(doc="submit the job files [default: none]")), ToolInput(tag="in_delay", input_type=Int(optional=True), prefix="--delay", doc=InputDocumentation(doc="Number of seconds to pause between launching each job\n[default: 0]")), ToolInput(tag="in_num_jobs", input_type=Int(optional=True), prefix="--num_jobs", doc=InputDocumentation(doc="Number of jobs to group commands into. [default: 4]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Start_Parallel_Picrust_Jobs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

