from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Make_Hydra_Config_Py_V0_1_0 = CommandToolBuilder(tool="make_hydra_config.py", base_command=["make_hydra_config.py"], inputs=[ToolInput(tag="in_basic_input_sample", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Basic input sample file (sample_id[TAB]sample_file_path)")), ToolInput(tag="in_how_many_pairs", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="How many pairs to sample (def. 100000)")), ToolInput(tag="in_num_allowed_def", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="The num. of units of variation that should be allowed (def. 8)"))], outputs=[], container="quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Hydra_Config_Py_V0_1_0().translate("wdl")

