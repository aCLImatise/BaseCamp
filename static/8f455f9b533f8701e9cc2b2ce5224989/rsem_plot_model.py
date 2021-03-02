from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsem_Plot_Model_V0_1_0 = CommandToolBuilder(tool="rsem_plot_model", base_command=["rsem-plot-model"], inputs=[ToolInput(tag="in_sample_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_plot_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Plot_Model_V0_1_0().translate("wdl", allow_empty_container=True)

