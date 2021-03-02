from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Paramfit_V0_1_0 = CommandToolBuilder(tool="paramfit", base_command=["paramfit"], inputs=[ToolInput(tag="in_job_control_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Job control file location (mandatory)")), ToolInput(tag="in_parameter_file_location", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="Parameter file location --OR--")), ToolInput(tag="in_pf", input_type=String(optional=True), prefix="-pf", doc=InputDocumentation(doc="list     List of multiple parameter files to use, their K values")), ToolInput(tag="in_coordinate_file_location", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Coordinate file location --OR--")), ToolInput(tag="in_cf", input_type=Int(optional=True), prefix="-cf", doc=InputDocumentation(doc="list      List of mdcrd files, number of structres, qm files location")), ToolInput(tag="in_list_quantum_only", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="List of quantum energies (for single fits only)")), ToolInput(tag="in_random_seed", input_type=String(optional=True), prefix="--random-seed", doc=InputDocumentation(doc="(for debugging only, no default value)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paramfit_V0_1_0().translate("wdl", allow_empty_container=True)

