from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tb_Profiler_Update_Tbdb_V0_1_0 = CommandToolBuilder(tool="tb_profiler_update_tbdb", base_command=["tb-profiler", "update_tbdb"], inputs=[ToolInput(tag="in_seqname", input_type=String(optional=True), prefix="--seqname", doc=InputDocumentation(doc="Mutation panel name (default: Chromosome)"))], outputs=[], container="quay.io/biocontainers/tb-profiler:3.0.3--pypyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tb_Profiler_Update_Tbdb_V0_1_0().translate("wdl")

