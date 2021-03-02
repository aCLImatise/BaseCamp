from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Mafaddirows_V0_1_0 = CommandToolBuilder(tool="mafAddIRows", base_command=["mafAddIRows"], inputs=[ToolInput(tag="in_n_beds", input_type=String(optional=True), prefix="-nBeds", doc=InputDocumentation(doc="reads in list of bed files, one per species, with N locations")), ToolInput(tag="in_add_n", input_type=Boolean(optional=True), prefix="-addN", doc=InputDocumentation(doc="adds rows of N's into maf blocks (rather than just annotating them)")), ToolInput(tag="in_add_dash", input_type=Boolean(optional=True), prefix="-addDash", doc=InputDocumentation(doc="adds rows of -'s into maf blocks (rather than just annotating them)\n")), ToolInput(tag="in_maf_in", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_two_bit_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mafaddirows_V0_1_0().translate("wdl", allow_empty_container=True)

