from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Medpy_Anisotropic_Diffusion_Py_V0_1_0 = CommandToolBuilder(tool="medpy_anisotropic_diffusion.py", base_command=["medpy_anisotropic_diffusion.py"], inputs=[ToolInput(tag="in_iterations", input_type=Int(optional=True), prefix="--iterations", doc=InputDocumentation(doc="The number of smoothing iterations. Strong parameter.")), ToolInput(tag="in_kappa", input_type=String(optional=True), prefix="--kappa", doc=InputDocumentation(doc="The algorithms kappa parameter. The higher the more\nedges are smoothed over.")), ToolInput(tag="in_gamma", input_type=String(optional=True), prefix="--gamma", doc=InputDocumentation(doc="The algorithms gamma parameter. The higher, the\nstronger the plateaus between edges are smeared.")), ToolInput(tag="in_display_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display more information.")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_silently_override_images", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Silently override existing output images.")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Source volume.")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Target volume."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Anisotropic_Diffusion_Py_V0_1_0().translate("wdl", allow_empty_container=True)

