from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tb_Profiler_Load_Library_V0_1_0 = CommandToolBuilder(tool="tb_profiler_load_library", base_command=["tb-profiler", "load_library"], inputs=[ToolInput(tag="in_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="Prefix to the library files"))], outputs=[], container="quay.io/biocontainers/tb-profiler:3.0.3--pypyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tb_Profiler_Load_Library_V0_1_0().translate("wdl")

