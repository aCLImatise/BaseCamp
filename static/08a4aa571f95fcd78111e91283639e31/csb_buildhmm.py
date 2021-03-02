from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Csb_Buildhmm_V0_1_0 = CommandToolBuilder(tool="csb_buildhmm", base_command=["csb-buildhmm"], inputs=[ToolInput(tag="in_query_id", input_type=File(optional=True), prefix="--query-id", doc=InputDocumentation(doc="ID of the query, in PDB-like format\n(accessionCHAIN).Used for naming the output files.\nAlso, if the input is a PDB file with multiple chains,\nCHAIN is used to pull the required chain from the\nfile.")), ToolInput(tag="in_tk_root", input_type=File(optional=True), prefix="--tk-root", doc=InputDocumentation(doc="path to the ToolkitRoot folder in your HHsuite setup\n(default=/ebio/abt1_toolkit/share/wye)")), ToolInput(tag="in_database", input_type=Int(optional=True), prefix="--database", doc=InputDocumentation(doc="custom HHblits database; if not defined, toolkit's\nunirpto20 will be used")), ToolInput(tag="in_tk_config", input_type=File(optional=True), prefix="--tk-config", doc=InputDocumentation(doc="path to a folder containing custom HHsuite configs\n(e.g. HHPaths.pm) (default=.)")), ToolInput(tag="in_cpu", input_type=Int(optional=True), prefix="--cpu", doc=InputDocumentation(doc="maximum degree of parallelism (default=1)")), ToolInput(tag="in_no_ss", input_type=Boolean(optional=True), prefix="--no-ss", doc=InputDocumentation(doc="do not include secondary structure (default=False)")), ToolInput(tag="in_no_pseudo", input_type=Boolean(optional=True), prefix="--no-pseudo", doc=InputDocumentation(doc="do not add emission and transition pseudocounts\n(default=False)")), ToolInput(tag="in_no_calibration", input_type=Boolean(optional=True), prefix="--no-calibration", doc=InputDocumentation(doc="do not calibrate the profile (default=False)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Csb_Buildhmm_V0_1_0().translate("wdl", allow_empty_container=True)

