from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Mg_Toolkit_Sequence_Search_Bitscore_V0_1_0 = CommandToolBuilder(tool="mg_toolkit_sequence_search_bitscore", base_command=["mg-toolkit", "sequence_search", "bitscore"], inputs=[ToolInput(tag="in_seq_bit_score_threshold", input_type=Int(optional=True), prefix="--seq-bitscore-threshold", doc=InputDocumentation(doc="Sequence bit score threshold. Accepted values x > 0\n(default: 25).")), ToolInput(tag="in_hit_bit_score_threshold", input_type=Int(optional=True), prefix="--hit-bitscore-threshold", doc=InputDocumentation(doc="Hit bit score threshold. Accepted values x > 0\n(default: 23).")), ToolInput(tag="in_report_seq_bit_score_threshold", input_type=Int(optional=True), prefix="--report-seq-bitscore-threshold", doc=InputDocumentation(doc="Sequence E-value threshold (reporting). Accepted\nvalues x > 0 (default: 7).")), ToolInput(tag="in_report_hit_bit_score_threshold", input_type=Int(optional=True), prefix="--report-hit-bitscore-threshold", doc=InputDocumentation(doc="Hit E-value threshold (reporting). Accepted values x >\n0 (default: 5).\n"))], outputs=[], container="quay.io/biocontainers/mg-toolkit:0.9.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mg_Toolkit_Sequence_Search_Bitscore_V0_1_0().translate("wdl")

