from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Falconc_Bam2Paf_V0_1_0 = CommandToolBuilder(tool="falconc_bam2paf", base_command=["falconc", "bam2paf"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__inbamfn_string", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="=, --in-bam-fn=     string  REQUIRED  input bam filename")), ToolInput(tag="in_outppaffn_string_required", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="=, --out-p-paf-fn=  string  REQUIRED  output paf filename for p-contigs")), ToolInput(tag="in_out_a_paf_fn", input_type=File(optional=True), prefix="--out-a-paf-fn", doc=InputDocumentation(doc="=       string  REQUIRED  output paf filename for a-contigs\n(those with - in their name)\n")), ToolInput(tag="in_bam_two_paf", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outppaffn_string_required", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outppaffn_string_required", type_hint=File()), doc=OutputDocumentation(doc="=, --out-p-paf-fn=  string  REQUIRED  output paf filename for p-contigs")), ToolOutput(tag="out_out_a_paf_fn", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_a_paf_fn", type_hint=File()), doc=OutputDocumentation(doc="=       string  REQUIRED  output paf filename for a-contigs\n(those with - in their name)\n"))], container="quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Bam2Paf_V0_1_0().translate("wdl")

