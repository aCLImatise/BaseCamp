from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Data_Filter_V0_1_0 = CommandToolBuilder(tool="data_filter", base_command=["data_filter"], inputs=[ToolInput(tag="in_cut_off_mean", input_type=File(optional=True), prefix="--cutoff_mean", doc=InputDocumentation(doc="mean cutoff of gene expression (default: 0.0)")), ToolInput(tag="in_cut_off_sd", input_type=Int(optional=True), prefix="--cutoff_sd", doc=InputDocumentation(doc="standard deviation cutoff of gene expression (default: 0.0)")), ToolInput(tag="in_percent_mean", input_type=Int(optional=True), prefix="--percent_mean", doc=InputDocumentation(doc="keep a proportion of total genes based mean of gene expression (default: 1.0)")), ToolInput(tag="in_percent_sd", input_type=Int(optional=True), prefix="--percent_sd", doc=InputDocumentation(doc="keep a proportion of total genes based standard deviation of gene expression (default: 1.0)"))], outputs=[], container="quay.io/biocontainers/gcen:0.5.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Data_Filter_V0_1_0().translate("wdl")

