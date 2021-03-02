from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean, File

Obthermo_V0_1_0 = CommandToolBuilder(tool="obthermo", base_command=["obthermo"], inputs=[ToolInput(tag="in_symm", input_type=Int(optional=True), prefix="--symm", doc=InputDocumentation(doc="override symmetry number used in input file")), ToolInput(tag="in_n_rot", input_type=Int(optional=True), prefix="--nrot", doc=InputDocumentation(doc="number of rotatable bonds for conformational entropy")), ToolInput(tag="in_dbd_t", input_type=String(optional=True), prefix="--dbdt", doc=InputDocumentation(doc="temperature derivative of second virial coefficient for cp calculation")), ToolInput(tag="in_kj", input_type=Boolean(optional=True), prefix="--kj", doc=InputDocumentation(doc="output kJ/mol related units (default kcal/mol)")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obthermo_V0_1_0().translate("wdl", allow_empty_container=True)

