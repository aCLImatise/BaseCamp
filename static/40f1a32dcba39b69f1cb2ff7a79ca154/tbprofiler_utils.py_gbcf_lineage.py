from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Tbprofiler_Utils_Py_Gbcf_Lineage_V0_1_0 = CommandToolBuilder(tool="tbprofiler_utils.py_gbcf_lineage", base_command=["tbprofiler_utils.py", "gbcf_lineage"], inputs=[ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Sample prefix (default: tbprofiler)")), ToolInput(tag="in_out_fmt", input_type=String(optional=True), prefix="--outfmt", doc=InputDocumentation(doc="Output format (default: json)")), ToolInput(tag="in_db", input_type=File(optional=True), prefix="--db", doc=InputDocumentation(doc="Full path to mutation database json file to use\n(default: TBProfiler panel) (default: drdb_v2)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbprofiler_Utils_Py_Gbcf_Lineage_V0_1_0().translate("wdl", allow_empty_container=True)

