from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Tbprofiler_Library_Summary_Py_Compare_V0_1_0 = CommandToolBuilder(tool="tbprofiler_library_summary.py_compare", base_command=["tbprofiler_library_summary.py", "compare"], inputs=[ToolInput(tag="in_drugs", input_type=String(optional=True), prefix="--drugs", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_prefix_one", input_type=Int(), position=0, doc=InputDocumentation(doc="NGS Platform")), ToolInput(tag="in_prefix_two", input_type=Int(), position=1, doc=InputDocumentation(doc="NGS Platform"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbprofiler_Library_Summary_Py_Compare_V0_1_0().translate("wdl", allow_empty_container=True)

