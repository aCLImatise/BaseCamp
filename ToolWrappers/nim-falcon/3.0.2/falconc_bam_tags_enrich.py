from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Falconc_Bam_Tags_Enrich_V0_1_0 = CommandToolBuilder(tool="falconc_bam_tags_enrich", base_command=["falconc", "bam-tags-enrich"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in_outputfn_string_required", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="=, --output-fn=  string  REQUIRED  Bam or Sam filename (based on its\nextension)")), ToolInput(tag="in_inputfn_string_required", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="=, --input-fn=   string  REQUIRED  Bam or Sam filename (based on its\nextension), or '-'\n")), ToolInput(tag="in_bam_tags_enrich", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outputfn_string_required", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outputfn_string_required", type_hint=File()), doc=OutputDocumentation(doc="=, --output-fn=  string  REQUIRED  Bam or Sam filename (based on its\nextension)"))], container="quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Bam_Tags_Enrich_V0_1_0().translate("wdl")

