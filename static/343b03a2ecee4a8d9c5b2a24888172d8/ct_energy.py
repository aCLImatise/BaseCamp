from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean, File

Ct_Energy_V0_1_0 = CommandToolBuilder(tool="ct_energy", base_command=["ct-energy"], inputs=[ToolInput(tag="in_temperature", input_type=Int(optional=True), prefix="--temperature", doc=InputDocumentation(doc="(defaults to 37)")), ToolInput(tag="in_suffix", input_type=String(optional=True), prefix="--suffix", doc=InputDocumentation(doc="(overrides temperature)")), ToolInput(tag="in_sodium", input_type=Boolean(optional=True), prefix="--sodium", doc=InputDocumentation(doc="=<[Na+] in M> (defaults to 1)")), ToolInput(tag="in_magnesium", input_type=Boolean(optional=True), prefix="--magnesium", doc=InputDocumentation(doc="=<[Mg++] in M> (defaults to 0)")), ToolInput(tag="in_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ct_Energy_V0_1_0().translate("wdl", allow_empty_container=True)

