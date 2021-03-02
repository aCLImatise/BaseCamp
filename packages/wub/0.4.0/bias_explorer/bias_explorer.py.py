from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bias_Explorer_Py_V0_1_0 = CommandToolBuilder(tool="bias_explorer.py", base_command=["bias_explorer.py"], inputs=[ToolInput(tag="in_report_pdf_biasexplorerpdf", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Report PDF (bias_explorer.pdf).")), ToolInput(tag="in_exclude_transcripts_zero", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="Exclude transcripts with zero counts.")), ToolInput(tag="in_count_file", input_type=String(), position=0, doc=InputDocumentation(doc="Input counts file with length ang GC content features."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bias_Explorer_Py_V0_1_0().translate("wdl", allow_empty_container=True)

