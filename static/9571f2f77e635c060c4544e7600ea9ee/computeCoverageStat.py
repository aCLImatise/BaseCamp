from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Computecoveragestat_V0_1_0 = CommandToolBuilder(tool="computeCoverageStat", base_command=["computeCoverageStat"], inputs=[ToolInput(tag="in_mandatory_path_g", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="Mandatory, path G to a gkpStore directory.")), ToolInput(tag="in_mandatory_path_t", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="<v> Mandatory, path T to a tigStore, and version V.")), ToolInput(tag="in_optional_assume_s", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Optional, assume genome size S.")), ToolInput(tag="in_recommended_prefix_output", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Recommended, prefix for output files.")), ToolInput(tag="in_update_tigstore_default", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Do not update the tigStore (default = do update).")), ToolInput(tag="in_estimate_based_use", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Do not estimate based on N50 (default = use N50).")), ToolInput(tag="in_be_leniant_require", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="Be leniant; don't require reads start at position zero.")), ToolInput(tag="in_version", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Computecoveragestat_V0_1_0().translate("wdl", allow_empty_container=True)

