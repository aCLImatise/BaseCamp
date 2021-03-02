from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Sdrmsd_V0_1_0 = CommandToolBuilder(tool="sdrmsd", base_command=["sdrmsd"], inputs=[ToolInput(tag="in_fit", input_type=Boolean(optional=True), prefix="--fit", doc=InputDocumentation(doc="Superpose molecules before RMSD calculation")), ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Discard poses with RMSD < THRESHOLD with respect\nprevious poses which where not rejected based on same\nprinciple. A Population SDField will be added to\noutput SD with the population number.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="If declared, write an output SDF file with the input\nmolecules with a new sdfield <RMSD>. If molecule was\nfitted, the fitted molecule coordinates will be saved.")), ToolInput(tag="in_reference_dots_df", input_type=String(), position=0, doc=InputDocumentation(doc="SDF file with the reference molecule.")), ToolInput(tag="in_input_dots_df", input_type=String(), position=1, doc=InputDocumentation(doc="SDF file with the molecules to be compared to reference."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sdrmsd_V0_1_0().translate("wdl", allow_empty_container=True)

