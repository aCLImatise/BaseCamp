from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, File

Alevin_Fry_Collate_V0_1_0 = CommandToolBuilder(tool="alevin_fry_collate", base_command=["alevin-fry", "collate"], inputs=[ToolInput(tag="in_input_dir", input_type=Directory(optional=True), prefix="--input-dir", doc=InputDocumentation(doc="input directory made by generate-permit-list")), ToolInput(tag="in_max_records", input_type=Int(optional=True), prefix="--max-records", doc=InputDocumentation(doc="the maximum number of read records to keep in memory at once\n[default: 30000000]")), ToolInput(tag="in_rad_dir", input_type=File(optional=True), prefix="--rad-dir", doc=InputDocumentation(doc="the directory containing the RAD file to be collated")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use for processing [default: 2]"))], outputs=[], container="quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alevin_Fry_Collate_V0_1_0().translate("wdl")

