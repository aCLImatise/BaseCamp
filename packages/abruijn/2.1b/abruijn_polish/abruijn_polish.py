from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Abruijn_Polish_V0_1_0 = CommandToolBuilder(tool="abruijn_polish", base_command=["abruijn-polish"], inputs=[ToolInput(tag="in_path_file_verbose", input_type=File(optional=True), prefix="-v", doc=InputDocumentation(doc="path to the file with verbose log [default = not set]")), ToolInput(tag="in_number_parallel_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of parallel threads [default = 1]")), ToolInput(tag="in_bubbles_file", input_type=String(), position=0, doc=InputDocumentation(doc="path to bubbles file")), ToolInput(tag="in_subs_matrix", input_type=String(), position=1, doc=InputDocumentation(doc="path to substitution matrix")), ToolInput(tag="in_hop_o_matrix", input_type=String(), position=2, doc=InputDocumentation(doc="path to homopolymer matrix")), ToolInput(tag="in_out_file", input_type=String(), position=3, doc=InputDocumentation(doc="path to output file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abruijn_Polish_V0_1_0().translate("wdl", allow_empty_container=True)

