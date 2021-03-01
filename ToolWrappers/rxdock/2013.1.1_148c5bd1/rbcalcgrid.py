from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rbcalcgrid_V0_1_0 = CommandToolBuilder(tool="rbcalcgrid", base_command=["rbcalcgrid"], inputs=[ToolInput(tag="in_outputsuffix_suffix_grid", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="<OutputSuffix> - suffix for grid (.grd IS required)")), ToolInput(tag="in_receptorprmfile_receptor_param", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="<ReceptorPrmFile> - receptor param file (contains active site params)")), ToolInput(tag="in_scoring_function_param", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="<SFPrmFile> - scoring function param file (either calcgrid_vdw1.prm or calcgrid_vdw5.prm)")), ToolInput(tag="in_gridstep_grid_step", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="<GridStep> - grid step (default=0.5A)")), ToolInput(tag="in_border_grid_border", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="<Border> - grid border around docking site (default=1.0A)")), ToolInput(tag="in_output_root", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_receptor_prm_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sfp_rm_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_grid_step", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbcalcgrid_V0_1_0().translate("wdl", allow_empty_container=True)

