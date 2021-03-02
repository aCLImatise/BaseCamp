from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Poretools_Times_V0_1_0 = CommandToolBuilder(tool="poretools_times", base_command=["poretools", "times"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not output warnings to stderr")), ToolInput(tag="in_utc", input_type=Boolean(optional=True), prefix="--utc", doc=InputDocumentation(doc="Show timestamps in UTC.")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="The input FAST5 files."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poretools_Times_V0_1_0().translate("wdl", allow_empty_container=True)

