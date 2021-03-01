from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Medpy_Grid_Py_V0_1_0 = CommandToolBuilder(tool="medpy_grid.py", base_command=["medpy_grid.py"], inputs=[ToolInput(tag="in_example", input_type=Int(optional=True), prefix="--example", doc=InputDocumentation(doc="Option 1/2: Supply an image to create the grid volume\nby example (i.e. with same shape, voxel spacing and\noffset).")), ToolInput(tag="in_shape", input_type=Int(optional=True), prefix="--shape", doc=InputDocumentation(doc="Option 2/2: Supply a colon-separated list of integers\nthat constitute the target volumes shape.")), ToolInput(tag="in_pixel_spacing", input_type=Int(optional=True), prefix="--pixel-spacing", doc=InputDocumentation(doc="Set the pixel spacing of the target volume by\nsupplying a colon-separated list of N numbers, where N\nis the number of dimension in the generated volume.")), ToolInput(tag="in_offset", input_type=Int(optional=True), prefix="--offset", doc=InputDocumentation(doc="Set offset of the target volume by supplying a colon-\nseparated list of N numbers, where N is the number of\ndimension in the generated volume.")), ToolInput(tag="in_real", input_type=Boolean(optional=True), prefix="--real", doc=InputDocumentation(doc="Spacing is given in real world coordinates, rather\nthan voxels. For this to make a difference, either the\n-e switch or the -p switch must be set.")), ToolInput(tag="in_display_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display more information.")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Silently override existing output images.")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="Generated grid volume.")), ToolInput(tag="in_spacing", input_type=String(), position=1, doc=InputDocumentation(doc="The grid spacing. Can be a single digit for regular\nspacing in all dimensions or a colon-separated list of\nN integers, where N is the number of dimension in the\ngenerated volume. To skip the grid in one dimension,\nsimply supply a 0 for it."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Grid_Py_V0_1_0().translate("wdl", allow_empty_container=True)

