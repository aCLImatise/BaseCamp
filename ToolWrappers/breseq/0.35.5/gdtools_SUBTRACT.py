from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Gdtools_Subtract_V0_1_0 = CommandToolBuilder(tool="gdtools_SUBTRACT", base_command=["gdtools", "SUBTRACT"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output GD file (DEFAULT=output.gd)")), ToolInput(tag="in_phylogeny_aware", input_type=Boolean(optional=True), prefix="--phylogeny-aware", doc=InputDocumentation(doc="Check the optional 'phylogeny_id' field when deciding if entries are equivalent")), ToolInput(tag="in_frequency_aware", input_type=Boolean(optional=True), prefix="--frequency-aware", doc=InputDocumentation(doc="Use the frequencies of mutations when performing the subtraction. Normally an input mutation is removed if it appears at any frequency in a subtracted file. In this mode its frequency is reduced by the frequency in each subtracted file. If the resulting frequency is zero or below, then the mutation is removed.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output GD file (DEFAULT=output.gd)"))], container="quay.io/biocontainers/breseq:0.35.5--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdtools_Subtract_V0_1_0().translate("wdl")

