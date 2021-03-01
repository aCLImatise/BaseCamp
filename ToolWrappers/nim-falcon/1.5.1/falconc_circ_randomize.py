from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Falconc_Circ_Randomize_V0_1_0 = CommandToolBuilder(tool="falconc_circ_randomize", base_command=["falconc", "circ-randomize"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__input_string", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="=, --input=   string  REQUIRED  fasta file of circular sequences")), ToolInput(tag="in__output_string", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="=, --output=  string  REQUIRED  fasta file output")), ToolInput(tag="in_seed_set_seed", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="=, --seed=    int64   0         set seed, if non-zero"))], outputs=[ToolOutput(tag="out__output_string", output_type=File(optional=True), selector=InputSelector(input_to_select="in__output_string", type_hint=File()), doc=OutputDocumentation(doc="=, --output=  string  REQUIRED  fasta file output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Circ_Randomize_V0_1_0().translate("wdl", allow_empty_container=True)

