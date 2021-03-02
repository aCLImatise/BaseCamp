from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Featurealigner2Msstats_Py_V0_1_0 = CommandToolBuilder(tool="featurealigner2msstats.py", base_command=["featurealigner2msstats.py"], inputs=[ToolInput(tag="in_align_two_ms_stats_do_tpy", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_feature_alignment_dot_tsv", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Featurealigner2Msstats_Py_V0_1_0().translate("wdl")

