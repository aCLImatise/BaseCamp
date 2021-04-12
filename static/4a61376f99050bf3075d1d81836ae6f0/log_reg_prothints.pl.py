from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float

Log_Reg_Prothints_Pl_V0_1_0 = CommandToolBuilder(tool="log_reg_prothints.pl", base_command=["log_reg_prothints.pl"], inputs=[ToolInput(tag="in_coef_zero", input_type=Float(optional=True), prefix="--coef0", doc=InputDocumentation(doc="Default -4.00529")), ToolInput(tag="in_coef_one", input_type=Float(optional=True), prefix="--coef1", doc=InputDocumentation(doc="Default 4.73909 for mult_norm")), ToolInput(tag="in_coef_two", input_type=Float(optional=True), prefix="--coef2", doc=InputDocumentation(doc="Default 9.09026 for al_score"))], outputs=[], container="quay.io/biocontainers/braker2:2.1.6--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Log_Reg_Prothints_Pl_V0_1_0().translate("wdl")

