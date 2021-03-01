from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Concoct_Refine_V0_1_0 = CommandToolBuilder(tool="concoct_refine", base_command=["concoct_refine"], inputs=[ToolInput(tag="in_expansion_factor", input_type=Int(optional=True), prefix="--expansion_factor", doc=InputDocumentation(doc="number of clusters to expand by")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc="The seed used for algorithm result reproducibility.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use defaults to one\n")), ToolInput(tag="in_cluster_file", input_type=String(), position=0, doc=InputDocumentation(doc="string specifying cluster file")), ToolInput(tag="in_original_data", input_type=String(), position=1, doc=InputDocumentation(doc="string original but transformed data file")), ToolInput(tag="in_scg_file", input_type=String(), position=2, doc=InputDocumentation(doc="string specifying scg frequency file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Concoct_Refine_V0_1_0().translate("wdl", allow_empty_container=True)

