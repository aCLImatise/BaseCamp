from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Focus_Database_Utils_V0_1_0 = CommandToolBuilder(tool="focus_database_utils", base_command=["focus_database_utils"], inputs=[ToolInput(tag="in_genomes", input_type=File(optional=True), prefix="--genomes", doc=InputDocumentation(doc="Path to directory with FAST(A/Q) files")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number Threads used in the k-mer counting (Default: 4)")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Path to log file (Default: STDOUT).")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/focus:1.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Focus_Database_Utils_V0_1_0().translate("wdl")

