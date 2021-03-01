from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Array

Fissfc_V0_1_0 = CommandToolBuilder(tool="fissfc", base_command=["fissfc"], inputs=[ToolInput(tag="in_url", input_type=String(optional=True), prefix="--url", doc=InputDocumentation(doc="Firecloud API root URL [default:\nhttps://api.firecloud.org/api/]")), ToolInput(tag="in_credentials", input_type=File(optional=True), prefix="--credentials", doc=InputDocumentation(doc="Firecloud credentials file")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Emit progressively more detailed feedback during\nexecution, e.g. to confirm when actions have completed\nor to show URL and parameters of REST calls. Multiple\n-V may be given.")), ToolInput(tag="in_yes", input_type=Boolean(optional=True), prefix="--yes", doc=InputDocumentation(doc="Assume yes for any prompts")), ToolInput(tag="in_list_search_commands", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[CMD], --list [CMD]\nlist or search available commands and exit")), ToolInput(tag="in_function", input_type=Array(t=String(), optional=True), prefix="--function", doc=InputDocumentation(doc="Show the code for the given command(s) and exit"))], outputs=[], container="quay.io/biocontainers/firecloud:0.16.31--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fissfc_V0_1_0().translate("wdl")

