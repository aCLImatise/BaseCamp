from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nw_Indent_V0_1_0 = CommandToolBuilder(tool="nw_indent", base_command=["nw_indent"], inputs=[ToolInput(tag="in_compact_remove_indentation", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": compact - remove indentation")), ToolInput(tag="in_use_warning_usinganything", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc=": use 'text' instead of the default '  '. WARNING: using\nanything else than whitespace is likely to result in output that\nis not valid Newick (which may or may not be a problem).\nIgnored with '-c'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Indent_V0_1_0().translate("wdl", allow_empty_container=True)

