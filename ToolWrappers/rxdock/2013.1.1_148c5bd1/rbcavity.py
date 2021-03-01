from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Float, String

Rbcavity_V0_1_0 = CommandToolBuilder(tool="rbcavity", base_command=["rbcavity"], inputs=[ToolInput(tag="in_receptor_param", input_type=File(optional=True), prefix="--receptor-param", doc=InputDocumentation(doc="receptor param file (contains active site\nparams)")), ToolInput(tag="in_write_docking_cavities", input_type=Boolean(optional=True), prefix="--write-docking-cavities", doc=InputDocumentation(doc="write docking cavities (plus distance grid)\nto .as file")), ToolInput(tag="in_read_docking_cavities", input_type=Boolean(optional=True), prefix="--read-docking-cavities", doc=InputDocumentation(doc="read docking cavities (plus distance grid)\nfrom .as file")), ToolInput(tag="in_write_insight_ii_grids", input_type=Boolean(optional=True), prefix="--write-insightii-grids", doc=InputDocumentation(doc="dump InsightII grids for each cavity for")), ToolInput(tag="in_list_atoms_dist", input_type=Float(optional=True), prefix="--list-atoms-dist", doc=InputDocumentation(doc="list receptor atoms within specified distance\nof any cavity (in angstrom) (default: 5.0)")), ToolInput(tag="in_print_site", input_type=Boolean(optional=True), prefix="--print-site", doc=InputDocumentation(doc="print SITE descriptors (counts of exposed\natoms)")), ToolInput(tag="in_border", input_type=Float(optional=True), prefix="--border", doc=InputDocumentation(doc="set the border around the cavities for the\ndistance grid (in angstrom) (default: 8.0)")), ToolInput(tag="in_write_moe_grid", input_type=Boolean(optional=True), prefix="--write-moe-grid", doc=InputDocumentation(doc="write active site into a MOE grid")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_visualisation", input_type=String(), position=0, doc=InputDocumentation(doc="-v, --write-psf-crd           dump target PSF/CRD files for rDock Viewer"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbcavity_V0_1_0().translate("wdl", allow_empty_container=True)

