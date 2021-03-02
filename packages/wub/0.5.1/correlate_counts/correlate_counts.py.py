from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Correlate_Counts_Py_V0_1_0 = CommandToolBuilder(tool="correlate_counts.py", base_command=["correlate_counts.py"], inputs=[ToolInput(tag="in_report_pdf_bammultiqcpdf", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Report PDF (bam_multi_qc.pdf).")), ToolInput(tag="in_correlation_statistic_spearman", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Correlation statistic - spearman or pearson (spearman).")), ToolInput(tag="in_log_transform_data", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="Log transform data.")), ToolInput(tag="in_omit_lower_diagonal", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Omit lower diagonal.")), ToolInput(tag="in_input_counts", input_type=String(), position=0, doc=InputDocumentation(doc="Input counts as tab separated files."))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Correlate_Counts_Py_V0_1_0().translate("wdl")

