from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Albatradis_Annotation_V0_1_0 = CommandToolBuilder(tool="albatradis_annotation", base_command=["albatradis-annotation"], inputs=[ToolInput(tag="in_feature_size", input_type=Int(optional=True), prefix="--feature_size", doc=InputDocumentation(doc="Feature size (default: 198)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--outputfile", doc=InputDocumentation(doc="Output file (default: output.embl)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print out more information about the analysis while it\nruns (default: False)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Turn on debugging (default: False)")), ToolInput(tag="in_embl_file", input_type=String(), position=0, doc=InputDocumentation(doc="Annotation file in EMBL format"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file (default: output.embl)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Albatradis_Annotation_V0_1_0().translate("wdl", allow_empty_container=True)

