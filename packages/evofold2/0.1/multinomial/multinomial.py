from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Multinomial_V0_1_0 = CommandToolBuilder(tool="multinomial", base_command=["multinomial"], inputs=[ToolInput(tag="in_arg_output_precision", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --precision ] arg (=5) Output precision of real numbers.")), ToolInput(tag="in_output_coefficients_probabilities", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[ --coefficients ]       Output coefficients instead of probabilities.")), ToolInput(tag="in_arg_use_rowmat", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --outputFormat ] arg   Use alternative output format. Possible values\nare: vector, rowMat, and colMat, which all use\nublas style formatting.")), ToolInput(tag="in_output_natural_logarithm", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[ --logarithm ]          Output natural logarithm of result values.")), ToolInput(tag="in_parameters_dot_tab", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_counts_dot_tab", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dot_tab", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Multinomial_V0_1_0().translate("wdl", allow_empty_container=True)

