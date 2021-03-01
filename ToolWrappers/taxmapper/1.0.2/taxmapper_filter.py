from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, String, Int

Taxmapper_Filter_V0_1_0 = CommandToolBuilder(tool="taxmapper_filter", base_command=["taxmapper", "filter"], inputs=[ToolInput(tag="in_tax", input_type=File(optional=True), prefix="--tax", doc=InputDocumentation(doc="Taxonomy mapping file (taxa.tsv if not specified\notherwise).")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output file [default: taxa_filtered.tsv]")), ToolInput(tag="in_auto", input_type=Float(optional=True), prefix="--auto", doc=InputDocumentation(doc="Automatic filter with probability threshold, if\nautomatic filter is chosen all other thresholds will\nbe ignored [nan or 0 - 1, default: 0.4]")), ToolInput(tag="in_identity", input_type=String(optional=True), prefix="--identity", doc=InputDocumentation(doc="Threshold for identity of best hit [default: nan]")), ToolInput(tag="in_identity_ratio", input_type=Int(optional=True), prefix="--identity-ratio", doc=InputDocumentation(doc="Threshold for identity ratio [1 - 10, default: nan]")), ToolInput(tag="in_evalue", input_type=String(optional=True), prefix="--evalue", doc=InputDocumentation(doc="Threshold for log e-values of best hit [default: nan]")), ToolInput(tag="in_evalue_diff", input_type=Int(optional=True), prefix="--evalue-diff", doc=InputDocumentation(doc="Threshold for absolute difference in e-values [0 -\n100, default: nan]\n"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file [default: taxa_filtered.tsv]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxmapper_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

