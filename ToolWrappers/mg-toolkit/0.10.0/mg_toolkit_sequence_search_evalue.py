from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int

Mg_Toolkit_Sequence_Search_Evalue_V0_1_0 = CommandToolBuilder(tool="mg_toolkit_sequence_search_evalue", base_command=["mg-toolkit", "sequence_search", "evalue"], inputs=[ToolInput(tag="in_seq_evalue_threshold", input_type=Float(optional=True), prefix="--seq-evalue-threshold", doc=InputDocumentation(doc="Sequence E-value threshold. Accepted value 0 < x ≤ 10\n(default: 0.01).")), ToolInput(tag="in_hit_evalue_threshold", input_type=Float(optional=True), prefix="--hit-evalue-threshold", doc=InputDocumentation(doc="Hit E-value threshold. Accepted value 0 < x ≤ 10\n(default: 0.03).")), ToolInput(tag="in_report_seq_evalue_threshold", input_type=Int(optional=True), prefix="--report-seq-evalue-threshold", doc=InputDocumentation(doc="Sequence E-value threshold (reporting).Accepted value\n0 < x ≤ 10 (default: 1).")), ToolInput(tag="in_report_hit_evalue_threshold", input_type=Int(optional=True), prefix="--report-hit-evalue-threshold", doc=InputDocumentation(doc="Hit E-value threshold (reporting). Accepted value 0 <\nx ≤ 10 (default: 1).\n"))], outputs=[], container="quay.io/biocontainers/mg-toolkit:0.10.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mg_Toolkit_Sequence_Search_Evalue_V0_1_0().translate("wdl")

