from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Plot_Gffcmp_Stats_Py_V0_1_0 = CommandToolBuilder(tool="plot_gffcmp_stats.py", base_command=["plot_gffcmp_stats.py"], inputs=[ToolInput(tag="in_report_pdf_plotgffcmpstatspdf", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Report PDF (plot_gffcmp_stats.pdf).")), ToolInput(tag="in_output_pickle_file", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="Output pickle file.")), ToolInput(tag="in_input_txt", input_type=String(), position=0, doc=InputDocumentation(doc="Input gffcompare stats file."))], outputs=[ToolOutput(tag="out_output_pickle_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_pickle_file", type_hint=File()), doc=OutputDocumentation(doc="Output pickle file."))], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Gffcmp_Stats_Py_V0_1_0().translate("wdl")

