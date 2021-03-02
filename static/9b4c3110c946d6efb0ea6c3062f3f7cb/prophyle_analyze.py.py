from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Prophyle_Analyze_Py_V0_1_0 = CommandToolBuilder(tool="prophyle_analyze.py", base_command=["prophyle_analyze.py"], inputs=[ToolInput(tag="in_use_stdin_multiple", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Use '-' for stdin or multiple files with")), ToolInput(tag="in_statistics_use_computation", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="['w', 'u', 'wl', 'ul']\nStatistics to use for the computation of histograms: w\n(default) => weighted assignments; u => unique\nassignments, non-weighted; wl => weighted assignments,\npropagated to leaves; ul => unique assignments,\npropagated to leaves."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Analyze_Py_V0_1_0().translate("wdl", allow_empty_container=True)

