from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Alevin_Fry_Generate_Permit_List_Flags_V0_1_0 = CommandToolBuilder(tool="alevin_fry_generate_permit_list_FLAGS", base_command=["alevin-fry", "generate-permit-list", "FLAGS"], inputs=[ToolInput(tag="in_unfiltered_pl", input_type=String(optional=True), prefix="--unfiltered-pl", doc=InputDocumentation(doc="")), ToolInput(tag="in_valid_bc", input_type=String(optional=True), prefix="--valid-bc", doc=InputDocumentation(doc="")), ToolInput(tag="in_force_cells", input_type=String(optional=True), prefix="--force-cells", doc=InputDocumentation(doc="")), ToolInput(tag="in_expect_cells", input_type=String(optional=True), prefix="--expect-cells", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dir", input_type=String(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="")), ToolInput(tag="in_expected_ori", input_type=String(optional=True), prefix="--expected-ori", doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alevin_Fry_Generate_Permit_List_Flags_V0_1_0().translate("wdl")

