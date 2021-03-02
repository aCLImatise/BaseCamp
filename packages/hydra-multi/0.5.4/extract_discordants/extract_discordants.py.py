from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Extract_Discordants_Py_V0_1_0 = CommandToolBuilder(tool="extract_discordants.py", base_command=["extract_discordants.py"], inputs=[ToolInput(tag="in_input_config_file", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Input config file (Required)")), ToolInput(tag="in_dataset_name_required", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="Dataset name (Required)")), ToolInput(tag="in_min_mapq", input_type=Int(optional=True), prefix="--min_mapq", doc=InputDocumentation(doc="Minimum MAPQ required on both ends of a pair (def. 0)")), ToolInput(tag="in_allow_dups", input_type=Boolean(optional=True), prefix="--allow_dups", doc=InputDocumentation(doc="Allow duplicate pairs (def. False)")), ToolInput(tag="in_mem", input_type=Int(optional=True), prefix="--mem", doc=InputDocumentation(doc="Memory used for sorting (def. 2000000000)"))], outputs=[], container="quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Discordants_Py_V0_1_0().translate("wdl")

