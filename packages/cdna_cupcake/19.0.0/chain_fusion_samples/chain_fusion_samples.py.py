from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Chain_Fusion_Samples_Py_V0_1_0 = CommandToolBuilder(tool="chain_fusion_samples.py", base_command=["chain_fusion_samples.py"], inputs=[ToolInput(tag="in_fuzzy_junction", input_type=Int(optional=True), prefix="--fuzzy_junction", doc=InputDocumentation(doc="Max allowed distance in junction to be considered\nidentical (default: 5 bp)\n")), ToolInput(tag="in_config_file", input_type=String(), position=0, doc=InputDocumentation(doc="{norm_fl,count_fl}    Which count field to use for chained sample (default:\ncount_fl)"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chain_Fusion_Samples_Py_V0_1_0().translate("wdl")

