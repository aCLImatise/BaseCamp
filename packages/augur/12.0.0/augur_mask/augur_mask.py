from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean, Array

Augur_Mask_V0_1_0 = CommandToolBuilder(tool="augur_mask", base_command=["augur", "mask"], inputs=[ToolInput(tag="in_sequences", input_type=String(optional=True), prefix="--sequences", doc=InputDocumentation(doc="sequences in VCF or FASTA format (default: None)")), ToolInput(tag="in_mask", input_type=File(optional=True), prefix="--mask", doc=InputDocumentation(doc="locations to be masked in either BED file format, DRM\nformat, or one 1-indexed site per line. (default:\nNone)")), ToolInput(tag="in_mask_from_beginning", input_type=Int(optional=True), prefix="--mask-from-beginning", doc=InputDocumentation(doc="FASTA Only: Number of sites to mask from beginning\n(default: 0)")), ToolInput(tag="in_mask_from_end", input_type=Int(optional=True), prefix="--mask-from-end", doc=InputDocumentation(doc="FASTA Only: Number of sites to mask from end (default:\n0)")), ToolInput(tag="in_mask_invalid", input_type=Boolean(optional=True), prefix="--mask-invalid", doc=InputDocumentation(doc="FASTA Only: Mask invalid nucleotides (default: False)")), ToolInput(tag="in_mask_sites", input_type=Array(t=String(), optional=True), prefix="--mask-sites", doc=InputDocumentation(doc="1-indexed list of sites to mask (default: None)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file (default: None)")), ToolInput(tag="in_no_cleanup", input_type=Boolean(optional=True), prefix="--no-cleanup", doc=InputDocumentation(doc="Leave intermediate files around. May be useful for\ndebugging (default: True)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file (default: None)"))], container="quay.io/biocontainers/augur:12.0.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Augur_Mask_V0_1_0().translate("wdl")

