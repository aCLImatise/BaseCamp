from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Parse_Sdrf_Split_Sdrf_V0_1_0 = CommandToolBuilder(tool="parse_sdrf_split_sdrf", base_command=["parse_sdrf", "split-sdrf"], inputs=[ToolInput(tag="in_sd_rf_file", input_type=File(optional=True), prefix="--sdrf_file", doc=InputDocumentation(doc="SDRF file to be splited  [required]")), ToolInput(tag="in_attribute", input_type=String(optional=True), prefix="--attribute", doc=InputDocumentation(doc="property to split, Multiple attributes are separated\nby commas  [required]")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="file prefix to be added to the sdrf file name"))], outputs=[], container="quay.io/biocontainers/sdrf-pipelines:0.0.13--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parse_Sdrf_Split_Sdrf_V0_1_0().translate("wdl")

