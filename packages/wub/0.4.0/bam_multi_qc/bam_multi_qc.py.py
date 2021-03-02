from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bam_Multi_Qc_Py_V0_1_0 = CommandToolBuilder(tool="bam_multi_qc.py", base_command=["bam_multi_qc.py"], inputs=[ToolInput(tag="in_report_pdf_bammultiqcpdf", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Report PDF (bam_multi_qc.pdf).")), ToolInput(tag="in_plot_reference_statistics", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="Do not plot reference statistics.")), ToolInput(tag="in_input_pickles", input_type=String(), position=0, doc=InputDocumentation(doc="Input pickles."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Multi_Qc_Py_V0_1_0().translate("wdl", allow_empty_container=True)

