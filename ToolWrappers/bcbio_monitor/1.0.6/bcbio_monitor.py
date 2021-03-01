from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Bcbio_Monitor_V0_1_0 = CommandToolBuilder(tool="bcbio_monitor", base_command=["bcbio_monitor"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="PAth to the configuration file, defaults to\n~/.bcbio/monitor.yaml")), ToolInput(tag="in_title", input_type=Int(optional=True), prefix="--title", doc=InputDocumentation(doc="Title (or name) for the analysis, i.e NA12878 test")), ToolInput(tag="in_no_update", input_type=Boolean(optional=True), prefix="--no-update", doc=InputDocumentation(doc="Don't update frontend with the last log line read (less\nrequests)")), ToolInput(tag="in_no_browser", input_type=Boolean(optional=True), prefix="--no-browser", doc=InputDocumentation(doc="Don't open a new browser tab")), ToolInput(tag="in_local", input_type=Boolean(optional=True), prefix="--local", doc=InputDocumentation(doc="Force the monitor to look for the log file locally\n(regardless of the configuration file.)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Monitor_V0_1_0().translate("wdl", allow_empty_container=True)

