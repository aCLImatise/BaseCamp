from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Chain_Samples_Py_V0_1_0 = CommandToolBuilder(tool="chain_samples.py", base_command=["chain_samples.py"], inputs=[ToolInput(tag="in_fuzzy_junction", input_type=Int(optional=True), prefix="--fuzzy_junction", doc=InputDocumentation(doc="Max allowed distance in junction to be considered\nidentical (default: 0 bp)")), ToolInput(tag="in_dun_merge_five_shorter", input_type=Boolean(optional=True), prefix="--dun-merge-5-shorter", doc=InputDocumentation(doc="Don't collapse shorter 5' transcripts (default: off)")), ToolInput(tag="in_max_three_diff", input_type=Int(optional=True), prefix="--max_3_diff", doc=InputDocumentation(doc="Maximum 3' difference allowed (default: 30bp)")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="Number of CPUs to use for multi-threading (default: 8)")), ToolInput(tag="in_config_file", input_type=String(), position=0, doc=InputDocumentation(doc="{norm_fl,count_fl}    Which count field to use for chained sample (default:\ncount_fl)"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chain_Samples_Py_V0_1_0().translate("wdl")

