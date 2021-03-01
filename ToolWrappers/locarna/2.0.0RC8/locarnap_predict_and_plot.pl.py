from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Locarnap_Predict_And_Plot_Pl_V0_1_0 = CommandToolBuilder(tool="locarnap_predict_and_plot.pl", base_command=["locarnap-predict-and-plot.pl"], inputs=[ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Full documentation")), ToolInput(tag="in_dont_plot", input_type=Boolean(optional=True), prefix="--dont-plot", doc=InputDocumentation(doc="Skip plotting, only output")), ToolInput(tag="in_show_sw", input_type=Boolean(optional=True), prefix="--show-sw", doc=InputDocumentation(doc="Show the structure weight in the plot")), ToolInput(tag="in_rev_compl", input_type=Boolean(optional=True), prefix="--revcompl", doc=InputDocumentation(doc="Draw for reverse complement (3'-5')")), ToolInput(tag="in_write_subseq", input_type=Boolean(optional=True), prefix="--write-subseq", doc=InputDocumentation(doc="Write the subsequence of fit")), ToolInput(tag="in_output_format", input_type=String(optional=True), prefix="--output-format", doc=InputDocumentation(doc="Output format (f = pdf or png, def=pdf)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Locarnap_Predict_And_Plot_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

