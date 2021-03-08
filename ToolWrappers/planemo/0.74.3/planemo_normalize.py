from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Planemo_Normalize_V0_1_0 = CommandToolBuilder(tool="planemo_normalize", base_command=["planemo", "normalize"], inputs=[ToolInput(tag="in_expand_macros", input_type=Boolean(optional=True), prefix="--expand_macros", doc=InputDocumentation(doc="Expand macros while normalizing tool XML - useful to see\nhow macros are evaluated.")), ToolInput(tag="in_skip_reorder", input_type=Boolean(optional=True), prefix="--skip_reorder", doc=InputDocumentation(doc="Planemo will reorder top-level tool blocks according to\ntool development best practices as part of this command,\nthis flag will disable that behavior.")), ToolInput(tag="in_skip_re_indent", input_type=Boolean(optional=True), prefix="--skip_reindent", doc=InputDocumentation(doc="Planemo will reindent the XML according to tool development\nbest practices as part of this command, this flag will\ndisable that behavior.")), ToolInput(tag="in_tool_path", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Normalize_V0_1_0().translate("wdl")

