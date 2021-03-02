from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Obspectrophore_V0_1_0 = CommandToolBuilder(tool="obspectrophore", base_command=["obspectrophore"], inputs=[ToolInput(tag="in__input_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[required]: input file")), ToolInput(tag="in__stereo_treatment", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[optional]: stereo treatment")), ToolInput(tag="in__implementation_details", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="[optional]: implementation details")), ToolInput(tag="in_specifies_kind_be", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=": Specifies the kind of normalization that should be performed.\nValid values are (without quotes):\nNo (default)\nZeroMean\nUnitStd\nZeroMeanAndUnitStd")), ToolInput(tag="in_specifies_required_accuracy", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": Specifies the required accuracy expressed as the angular stepsize.\nOnly the following discrete values are allowed:\n1, 2, 5, 10, 15, 20 (default), 30, 36, 45, 60")), ToolInput(tag="in_specifies_required_resolution", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": Specifies the required resolution expressed as a real positive number.\nThe default value is 3.0 Angstrom. Negative values or a value equal\nto 0 generate an error message")), ToolInput(tag="in_parameters", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/openbabel:3.1.1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obspectrophore_V0_1_0().translate("wdl")

