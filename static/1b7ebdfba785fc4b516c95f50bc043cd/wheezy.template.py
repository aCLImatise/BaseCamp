from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Wheezy_Template_V0_1_0 = CommandToolBuilder(tool="wheezy.template", base_command=["wheezy.template"], inputs=[ToolInput(tag="in_search_path_templates", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="search path for templates ( . )")), ToolInput(tag="in_token_start_", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="token start ( @ )")), ToolInput(tag="in_whitespace_clean_up", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="whitespace clean up")), ToolInput(tag="in_template", input_type=String(), position=0, doc=InputDocumentation(doc="a filename")), ToolInput(tag="in_context", input_type=String(), position=1, doc=InputDocumentation(doc="a filename or JSON string"))], outputs=[], container="quay.io/biocontainers/wheezy.template:0.1.178--pyh864c0ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wheezy_Template_V0_1_0().translate("wdl")

