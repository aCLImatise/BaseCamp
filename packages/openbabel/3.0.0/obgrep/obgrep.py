from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Obgrep_V0_1_0 = CommandToolBuilder(tool="obgrep", base_command=["obgrep"], inputs=[ToolInput(tag="in_invert_matching_print", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Invert the matching, print non-matching molecules")), ToolInput(tag="in_print_number_matched", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Print the number of matched molecules")), ToolInput(tag="in_specify_input_format", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="Specify the input and output format")), ToolInput(tag="in_full_match_print", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Full match, print matching-molecules when the number\nof heavy atoms is equal to the number of PATTERN atoms")), ToolInput(tag="in_only_print_name", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Only print the name of the molecules")), ToolInput(tag="in_print_molecule_occurs", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Print a molecule only if the PATTERN occurs NUM times inside the molecule"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obgrep_V0_1_0().translate("wdl", allow_empty_container=True)

