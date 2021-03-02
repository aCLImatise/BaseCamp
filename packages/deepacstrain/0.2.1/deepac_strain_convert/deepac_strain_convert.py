from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Deepac_Strain_Convert_V0_1_0 = CommandToolBuilder(tool="deepac_strain_convert", base_command=["deepac-strain", "convert"], inputs=[ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="--weights", doc=InputDocumentation(doc="Use prepared weights instead of the model file.")), ToolInput(tag="in_in_it", input_type=Boolean(optional=True), prefix="--init", doc=InputDocumentation(doc="Initialize a random model from config.")), ToolInput(tag="in_config", input_type=String(), position=0, doc=InputDocumentation(doc="Training config file.")), ToolInput(tag="in_model", input_type=String(), position=1, doc=InputDocumentation(doc="Saved model."))], outputs=[], container="quay.io/biocontainers/deepacstrain:0.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Strain_Convert_V0_1_0().translate("wdl")

