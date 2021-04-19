from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mer_Fig_R_V0_1_0 = CommandToolBuilder(tool="mer_fig.R", base_command=["mer_fig.R"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="[required]\n- RDS files. <fig1.rds,fig2.rds...>")), ToolInput(tag="in_labels", input_type=Boolean(optional=True), prefix="--labels", doc=InputDocumentation(doc="[optional]\n- Labesl for each figure. Default: <A,B,C,D...>")), ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="[optional]\n- Output files for the graph. Default: cowplot_mer_fig.pdf")), ToolInput(tag="in_ncol", input_type=Boolean(optional=True), prefix="--ncol", doc=InputDocumentation(doc="[optional]\n- Number of columns on the graph.")), ToolInput(tag="in_base_height", input_type=Boolean(optional=True), prefix="--base_height", doc=InputDocumentation(doc="[optional]\n- The height (in inches) of each sub-plot")), ToolInput(tag="in_base_aspect_ratio", input_type=Boolean(optional=True), prefix="--base_aspect_ratio", doc=InputDocumentation(doc="[optional]\n-  The aspect ratio of each sub-plot. Default: 1.6\n"))], outputs=[], container="quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mer_Fig_R_V0_1_0().translate("wdl")

