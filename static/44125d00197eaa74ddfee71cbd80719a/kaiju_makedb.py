from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Kaiju_Makedb_V0_1_0 = CommandToolBuilder(tool="kaiju_makedb", base_command=["kaiju-makedb"], inputs=[ToolInput(tag="in_set_number_parallel", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Set number of parallel threads for index construction to X \(default:5\)\nThe more threads are used, the higher the memory requirement becomes.")), ToolInput(tag="in_no_download", input_type=Boolean(optional=True), prefix="--no-download", doc=InputDocumentation(doc="Do not download files, but use the existing files in the folder.")), ToolInput(tag="in_index_only", input_type=Boolean(optional=True), prefix="--index-only", doc=InputDocumentation(doc="Only create BWT and FMI from kaiju_db_*.faa files, implies --no-download."))], outputs=[], container="quay.io/biocontainers/kaiju:1.7.4--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kaiju_Makedb_V0_1_0().translate("wdl")

