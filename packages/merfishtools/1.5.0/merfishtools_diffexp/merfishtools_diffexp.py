from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, File, Int

Merfishtools_Diffexp_V0_1_0 = CommandToolBuilder(tool="merfishtools_diffexp", base_command=["merfishtools", "diffexp"], inputs=[ToolInput(tag="in_max_null_log_two_fc", input_type=Float(optional=True), prefix="--max-null-log2fc", doc=InputDocumentation(doc="Maximum absolute log2 fold change considered as no differential expression [1.0].")), ToolInput(tag="in_pseudo_counts", input_type=Float(optional=True), prefix="--pseudocounts", doc=InputDocumentation(doc="Pseudocounts to add to means before fold change calculation [1.0].")), ToolInput(tag="in_cdf", input_type=File(optional=True), prefix="--cdf", doc=InputDocumentation(doc="Path to write CDFs of log2 fold changes to.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use.")), ToolInput(tag="in_group_one", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merfishtools_Diffexp_V0_1_0().translate("wdl", allow_empty_container=True)

