from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Nb_Train_V0_1_0 = CommandToolBuilder(tool="nb_train", base_command=["nb-train"], inputs=[ToolInput(tag="in_contact", input_type=Boolean(optional=True), prefix="--contact", doc=InputDocumentation(doc="Print contact information.")), ToolInput(tag="in_desired_oligonucleotide_length", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="Desired oligonucleotide length (default = 8).")), ToolInput(tag="in_m", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nb_Train_V0_1_0().translate("wdl", allow_empty_container=True)

