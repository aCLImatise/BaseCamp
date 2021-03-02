from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Dgenies_Clear_V0_1_0 = CommandToolBuilder(tool="dgenies_clear", base_command=["dgenies", "clear"], inputs=[ToolInput(tag="in_clear_logs", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[LOGS], --logs [LOGS]\nClear logs")), ToolInput(tag="in_max_age", input_type=Int(optional=True), prefix="--max-age", doc=InputDocumentation(doc="Max age for job to delete (0 for all)")), ToolInput(tag="in_add_option_use", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="[WEB], --web [WEB]\nAdd this option with -j option, if you use the\nwebserver mode\n")), ToolInput(tag="in_j", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_cron_s", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_logs", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_jobs", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dgenies_Clear_V0_1_0().translate("wdl", allow_empty_container=True)

