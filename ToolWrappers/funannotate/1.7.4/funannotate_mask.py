from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Funannotate_Mask_V0_1_0 = CommandToolBuilder(tool="funannotate_mask", base_command=["funannotate", "mask"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Multi-FASTA genome file. (Required)")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output softmasked FASTA file. (Required)")), ToolInput(tag="in_method", input_type=Boolean(optional=True), prefix="--method", doc=InputDocumentation(doc="Method to use. Default: tantan [repeatmasker, repeatmodeler]")), ToolInput(tag="in_repeatmasker_species", input_type=Boolean(optional=True), prefix="--repeatmasker_species", doc=InputDocumentation(doc="Species to use for RepeatMasker")), ToolInput(tag="in_repeat_modeler_lib", input_type=Boolean(optional=True), prefix="--repeatmodeler_lib", doc=InputDocumentation(doc="Custom repeat database (FASTA format)")), ToolInput(tag="in_cpus", input_type=Boolean(optional=True), prefix="--cpus", doc=InputDocumentation(doc="Number of cpus to use. Default: 2")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep intermediate files")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output softmasked FASTA file. (Required)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funannotate_Mask_V0_1_0().translate("wdl", allow_empty_container=True)

