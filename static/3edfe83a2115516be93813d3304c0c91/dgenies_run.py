from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Dgenies_Run_V0_1_0 = CommandToolBuilder(tool="dgenies_run", base_command=["dgenies", "run"], inputs=[ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="Mode into run the application")), ToolInput(tag="in_run_debug_mode", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[DEBUG], --debug [DEBUG]\nRun in debug mode")), ToolInput(tag="in_host", input_type=String(optional=True), prefix="--host", doc=InputDocumentation(doc="Host into run the application")), ToolInput(tag="in_port", input_type=String(optional=True), prefix="--port", doc=InputDocumentation(doc="Port into run the application")), ToolInput(tag="in_no_cron_s", input_type=Boolean(optional=True), prefix="--no-crons", doc=InputDocumentation(doc="[NO_CRONS]\nDo not run crons (for debug only, ignored for\nstandalone mode)")), ToolInput(tag="in_no_browser", input_type=Boolean(optional=True), prefix="--no-browser", doc=InputDocumentation(doc="[NO_BROWSER]\nDo not start the browser (Start of browser is always\ndisabled in debug mode)\n")), ToolInput(tag="in_debug", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dgenies_Run_V0_1_0().translate("wdl", allow_empty_container=True)

