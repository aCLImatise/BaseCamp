from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Anvi_Help_V0_1_0 = CommandToolBuilder(tool="anvi_help", base_command=["anvi-help"], inputs=[ToolInput(tag="in_requires", input_type=Boolean(optional=True), prefix="--requires", doc=InputDocumentation(doc="Restrict to programs that require this search term")), ToolInput(tag="in_provides", input_type=Boolean(optional=True), prefix="--provides", doc=InputDocumentation(doc="Restrict to programs that provide this search term")), ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="--name", doc=InputDocumentation(doc="Restrict to programs that contain this search term in\ntheir name")), ToolInput(tag="in_report", input_type=String(optional=True), prefix="--report", doc=InputDocumentation(doc="Which information would you like to be in the report?\nMess with this if you are disappointed with the\ndefault. Possibles are Description, Tags, Requires,\nProvides, Status, and Resources. Add multiple of them\nwith commas (no whitespace). For example, if you\nwanted Description and Resources, you would put here\nDescription,Resources\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Help_V0_1_0().translate("wdl", allow_empty_container=True)

