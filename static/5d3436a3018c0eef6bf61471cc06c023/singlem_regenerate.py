from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Singlem_Regenerate_V0_1_0 = CommandToolBuilder(tool="singlem_regenerate", base_command=["singlem", "regenerate"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="output debug information")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="only output errors")), ToolInput(tag="in_full_help", input_type=Boolean(optional=True), prefix="--full_help", doc=InputDocumentation(doc="display all help options")), ToolInput(tag="in_input_single_m_package", input_type=File(optional=True), prefix="--input_singlem_package", doc=InputDocumentation(doc="input package")), ToolInput(tag="in_output_single_m_package", input_type=File(optional=True), prefix="--output_singlem_package", doc=InputDocumentation(doc="output package")), ToolInput(tag="in_intermediate_archaea_graft_m_package", input_type=String(), position=0, doc=InputDocumentation(doc="--intermediate_bacteria_graftm_package")), ToolInput(tag="in_intermediate_bacteria_graft_m_package", input_type=String(), position=1, doc=InputDocumentation(doc="--input_taxonomy INPUT_TAXONOMY"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Singlem_Regenerate_V0_1_0().translate("wdl", allow_empty_container=True)

