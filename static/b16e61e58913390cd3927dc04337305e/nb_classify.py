from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Nb_Classify_V0_1_0 = CommandToolBuilder(tool="nb_classify", base_command=["nb-classify"], inputs=[ToolInput(tag="in_contact", input_type=Boolean(optional=True), prefix="--contact", doc=InputDocumentation(doc="Print contact information.")), ToolInput(tag="in_number_fragments_classify", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="Number of fragments to classify at a time (default = 50000).")), ToolInput(tag="in_log_likelihood_top", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Log likelihood of the top T models will be returned. If you\nwish to have the log likelihood of all models in the\nresults file set T = 0 (default = 0).")), ToolInput(tag="in_level_output_information", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Level of output information (default = 1).")), ToolInput(tag="in_extension_add_temporary", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="Extension to add to temporary files (default = txt).")), ToolInput(tag="in_r", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_q", input_type=File(optional=True), prefix="-q", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nb_Classify_V0_1_0().translate("wdl", allow_empty_container=True)

