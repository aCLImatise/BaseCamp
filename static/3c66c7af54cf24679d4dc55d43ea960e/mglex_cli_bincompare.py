from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Float, String

Mglex_Cli_Bincompare_V0_1_0 = CommandToolBuilder(tool="mglex_cli_bincompare", base_command=["mglex-cli", "bincompare"], inputs=[ToolInput(tag="in_posterior_ratio", input_type=Boolean(optional=True), prefix="--posterior-ratio", doc=InputDocumentation(doc="Weigh sequences by (subset) bin posterior [default: False]")), ToolInput(tag="in_data", input_type=File(optional=True), prefix="--data", doc=InputDocumentation(doc="Likelihood matrix [standard input]")), ToolInput(tag="in_weight", input_type=File(optional=True), prefix="--weight", doc=InputDocumentation(doc="Optional weights (sequence length) file [None]")), ToolInput(tag="in_var_3", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="<file, --subset-1 <file>          Use subset of column indices (1-based) [None]")), ToolInput(tag="in_var_4", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="<file, --subset-2 <file>          Use subset of column indices (1-based) [None]")), ToolInput(tag="in_beta", input_type=Float(optional=True), prefix="--beta", doc=InputDocumentation(doc="Beta correction factor (e.g. determined via MSE evaluation) [default: 1.0]")), ToolInput(tag="in_prefilter_thresh", input_type=Float(optional=True), prefix="--prefilter-thresh", doc=InputDocumentation(doc="Contig overlap similarity used to avoid likelihood calculations [default: 0.5]")), ToolInput(tag="in_edge_thresh", input_type=Float(optional=True), prefix="--edge-thresh", doc=InputDocumentation(doc="Only distances <= threshold are reported; use 'inf' to show all [default: 30]")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_subset_two", input_type=File(optional=True), prefix="--subset-2", doc=InputDocumentation(doc="")), ToolInput(tag="in_subset_one", input_type=File(optional=True), prefix="--subset-1", doc=InputDocumentation(doc="")), ToolInput(tag="in_bin_compare", input_type=String(), position=0, doc=InputDocumentation(doc="[--weight <file> --data <file> --subset-1 <file> --subset-2 <file> --beta <float> --posterior-ratio]\n[--prefilter-thresh <float> --edge-thresh <float>]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mglex_Cli_Bincompare_V0_1_0().translate("wdl", allow_empty_container=True)

