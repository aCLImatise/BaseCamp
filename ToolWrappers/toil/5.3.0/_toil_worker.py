from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

_Toil_Worker_V0_1_0 = CommandToolBuilder(tool="_toil_worker", base_command=["_toil_worker"], inputs=[ToolInput(tag="in_context", input_type=Int(optional=True), prefix="--context", doc=InputDocumentation(doc="Pickled, base64-encoded context manager(s) to run job\ninside of. Allows the Toil leader to pass setup and\ncleanup work provided by the batch system, in the form of\npickled Python context manager objects, that the worker\ncan then run before/after the job on the batch system's\nbehalf.\n")), ToolInput(tag="in_job_name", input_type=String(), position=0, doc=InputDocumentation(doc="Text name of the job being run")), ToolInput(tag="in_job_store_locator", input_type=String(), position=1, doc=InputDocumentation(doc="Information required to connect to the job store")), ToolInput(tag="in_job_store_id", input_type=String(), position=2, doc=InputDocumentation(doc="ID of the job within the job store"))], outputs=[], container="quay.io/biocontainers/toil:5.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Toil_Worker_V0_1_0().translate("wdl")

