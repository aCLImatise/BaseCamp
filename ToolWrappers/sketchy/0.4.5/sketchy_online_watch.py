from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Sketchy_Online_Watch_V0_1_0 = CommandToolBuilder(tool="sketchy_online_watch", base_command=["sketchy", "online", "watch"], inputs=[ToolInput(tag="in_directory", input_type=File(optional=True), prefix="--directory", doc=InputDocumentation(doc="Path to directory to watch [required]  [required]")), ToolInput(tag="in_regex", input_type=String(optional=True), prefix="--regex", doc=InputDocumentation(doc="Regex to identify read files [.*\.fastq$]")), ToolInput(tag="in_now", input_type=Boolean(optional=True), prefix="--now", doc=InputDocumentation(doc="Disable waiting for file completion."))], outputs=[], container="quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Online_Watch_V0_1_0().translate("wdl")

