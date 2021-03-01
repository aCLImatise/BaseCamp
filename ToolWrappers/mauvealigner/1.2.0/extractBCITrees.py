from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Extractbcitrees_V0_1_0 = CommandToolBuilder(tool="extractBCITrees", base_command=["extractBCITrees"], inputs=[ToolInput(tag="in_random_seed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bci_threshold", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_max_output_trees", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_mr_bayes_dot_tr_probs_input_file_one_dot_dot_n", input_type=File(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_nexus_output_file", input_type=File(), position=4, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_nexus_output_file", output_type=File(), selector=InputSelector(input_to_select="in_nexus_output_file", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extractbcitrees_V0_1_0().translate("wdl", allow_empty_container=True)

