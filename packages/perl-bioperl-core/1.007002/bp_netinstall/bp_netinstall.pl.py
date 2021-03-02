from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Bp_Netinstall_Pl_V0_1_0 = CommandToolBuilder(tool="bp_netinstall.pl", base_command=["bp_netinstall.pl"], inputs=[ToolInput(tag="in_dev", input_type=Boolean(optional=True), prefix="--dev", doc=InputDocumentation(doc="Use the development version of bioperl from git")), ToolInput(tag="in_build_param_str", input_type=String(optional=True), prefix="--build_param_str", doc=InputDocumentation(doc="Parameters that are passed in at 'perl Build.PL'")), ToolInput(tag="in_install_param_str", input_type=String(optional=True), prefix="--install_param_str", doc=InputDocumentation(doc="Use this string to predefine './Build install'\nparameters such as 'install_base' for\nbioperl installation")), ToolInput(tag="in_bioperl_path", input_type=Boolean(optional=True), prefix="--bioperl_path", doc=InputDocumentation(doc="Path to BioPerl tarball (will not download BioPerl)")), ToolInput(tag="in_skip_start", input_type=Boolean(optional=True), prefix="--skip_start", doc=InputDocumentation(doc="Don't wait for 'Enter' at program start")), ToolInput(tag="in_b", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_don", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_parameters", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_path", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_that", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bioperl", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_are", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_passed", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_tarball", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_in", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_at", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Netinstall_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

