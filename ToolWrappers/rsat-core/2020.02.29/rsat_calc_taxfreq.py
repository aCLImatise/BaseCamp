from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Calc_Taxfreq_V0_1_0 = CommandToolBuilder(tool="rsat_calc_taxfreq", base_command=["rsat", "calc-taxfreq"], inputs=[ToolInput(tag="in_calc_tax_freq", input_type=String(), position=0, doc=InputDocumentation(doc="[1mDESCRIPTION[0m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Calc_Taxfreq_V0_1_0().translate("wdl", allow_empty_container=True)

