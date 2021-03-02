from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Medpy_Morphology_Py_V0_1_0 = CommandToolBuilder(tool="medpy_morphology.py", base_command=["medpy_morphology.py"], inputs=[ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="The type of the morphological operation.")), ToolInput(tag="in_iterations", input_type=Int(optional=True), prefix="--iterations", doc=InputDocumentation(doc="The number of iteration to execute. Supply a value of\n1 or higher to restrict the effect of the\nmorphological operation. Otherwise it is applied until\nsaturation.")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="Size of the closing element (>=1). The higher this\nvalue, the bigger the wholes that get closed (closing)\nresp. unconnected elements that are removed (opening).\nIn the 3D case, 1 equals a 6-connectedness, 2 a\n12-connectedness, 3 a 18-connectedness, etc.")), ToolInput(tag="in_display_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display more information.")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_silently_override_images", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Silently override existing output images.")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Source volume.")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Target volume."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Morphology_Py_V0_1_0().translate("wdl", allow_empty_container=True)

