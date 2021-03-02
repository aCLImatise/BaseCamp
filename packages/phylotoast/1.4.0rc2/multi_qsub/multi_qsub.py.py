from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Multi_Qsub_Py_V0_1_0 = CommandToolBuilder(tool="multi_qsub.py", base_command=["multi_qsub.py"], inputs=[ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="--test", doc=InputDocumentation(doc="Only print each of the qsub commands instead of actually\nrunning the commands.\n")), ToolInput(tag="in_job_scripts", input_type=String(), position=0, doc=InputDocumentation(doc="The job script files to submit to the queuing system."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Multi_Qsub_Py_V0_1_0().translate("wdl", allow_empty_container=True)

