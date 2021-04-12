from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Network_Build_V0_1_0 = CommandToolBuilder(tool="network_build", base_command=["network_build"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="correlation coefficient method (default: spearman)")), ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="--log", doc=InputDocumentation(doc="<log, log2 or log10> make a log(x+1) transformation (default: not transform)")), ToolInput(tag="in_thread", input_type=Int(optional=True), prefix="--thread", doc=InputDocumentation(doc="cpu cores (default: 2)")), ToolInput(tag="in_pval", input_type=Int(optional=True), prefix="--pval", doc=InputDocumentation(doc="p value cutoff (default: 0.001)")), ToolInput(tag="in_cor", input_type=Int(optional=True), prefix="--cor", doc=InputDocumentation(doc="correlation coefficient cutoff (default: 0.1)")), ToolInput(tag="in_signed", input_type=String(optional=True), prefix="--signed", doc=InputDocumentation(doc="singed network (default: n)")), ToolInput(tag="in_fdr", input_type=String(optional=True), prefix="--fdr", doc=InputDocumentation(doc="calculate FDR (default: n)"))], outputs=[], container="quay.io/biocontainers/gcen:0.5.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Network_Build_V0_1_0().translate("wdl")

