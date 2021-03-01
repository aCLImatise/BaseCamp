from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Compare_Hla_Py_Utsw_Fname_V0_1_0 = CommandToolBuilder(tool="compare_HLA.py_utsw_fname", base_command=["compare_HLA.py", "utsw_fname"], inputs=[ToolInput(tag="in_compare_hla_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_his_at_genotype_fname", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ut_sw_fname", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_Hla_Py_Utsw_Fname_V0_1_0().translate("wdl", allow_empty_container=True)

