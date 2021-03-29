from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Tb_Profiler_Reformat_V0_1_0 = CommandToolBuilder(tool="tb_profiler_reformat", base_command=["tb-profiler", "reformat"], inputs=[ToolInput(tag="in_txt", input_type=Boolean(optional=True), prefix="--txt", doc=InputDocumentation(doc="Add text output (default: False)")), ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="--csv", doc=InputDocumentation(doc="Add CSV output (default: False)")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="Mutation panel name (default: tbdb)")), ToolInput(tag="in_external_db", input_type=File(optional=True), prefix="--external_db", doc=InputDocumentation(doc="Path to db files prefix (overrides '--db' parameter)\n(default: None)"))], outputs=[], container="quay.io/biocontainers/tb-profiler:3.0.2--pypyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tb_Profiler_Reformat_V0_1_0().translate("wdl")

