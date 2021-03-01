from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Merfishtools_Est_Error_Rates_Readout_V0_1_0 = CommandToolBuilder(tool="merfishtools_est_error_rates_readout", base_command=["merfishtools", "est-error-rates", "readout"], inputs=[ToolInput(tag="in_mer_fish_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_est_error_rates", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tsv_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merfishtools_Est_Error_Rates_Readout_V0_1_0().translate("wdl", allow_empty_container=True)

