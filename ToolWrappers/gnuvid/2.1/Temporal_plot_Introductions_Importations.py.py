from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Temporal_Plot_Introductions_Importations_Py_V0_1_0 = CommandToolBuilder(tool="Temporal_plot_Introductions_Importations.py", base_command=["Temporal_plot_Introductions_Importations.py"], inputs=[ToolInput(tag="in_alleles", input_type=Boolean(optional=True), prefix="--alleles", doc=InputDocumentation(doc="include the 10 ORFs calculations [default OFF]")), ToolInput(tag="in_temporal_plot_circulating", input_type=Directory(), position=0, doc=InputDocumentation(doc="Temporal plot for circulating CCs and number of Introductions/Exportations")), ToolInput(tag="in_list", input_type=String(), position=0, doc=InputDocumentation(doc="Files List ordered by month")), ToolInput(tag="in_state", input_type=String(), position=1, doc=InputDocumentation(doc="State code of interest")), ToolInput(tag="in_gnu_vid_report", input_type=String(), position=2, doc=InputDocumentation(doc="GNUVID strain report")), ToolInput(tag="in_st_gnuvid_tab", input_type=Directory(), position=3, doc=InputDocumentation(doc="ST GNUVID tab report"))], outputs=[], container="quay.io/biocontainers/gnuvid:2.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Temporal_Plot_Introductions_Importations_Py_V0_1_0().translate("wdl")

