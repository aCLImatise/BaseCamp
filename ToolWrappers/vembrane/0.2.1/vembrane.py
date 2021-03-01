from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Vembrane_V0_1_0 = CommandToolBuilder(tool="vembrane", base_command=["vembrane"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file, if not specified, output is written to\nSTDOUT.")), ToolInput(tag="in_output_fmt", input_type=String(optional=True), prefix="--output-fmt", doc=InputDocumentation(doc="Output format.")), ToolInput(tag="in_annotation_key", input_type=String(optional=True), prefix="--annotation-key", doc=InputDocumentation(doc="The INFO key for the annotation field.")), ToolInput(tag="in_statistics", input_type=File(optional=True), prefix="--statistics", doc=InputDocumentation(doc="Write statistics to this file.")), ToolInput(tag="in_keep_unmatched", input_type=Boolean(optional=True), prefix="--keep-unmatched", doc=InputDocumentation(doc="Keep all annotations of a variant if at least one of\nthem passes the expression.\n")), ToolInput(tag="in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="The file containing the variants.")), ToolInput(tag="in_expression", input_type=String(), position=1, doc=InputDocumentation(doc="Filter variants and annotations. If this removes all\nannotations, the variant is removed as well."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file, if not specified, output is written to\nSTDOUT."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vembrane_V0_1_0().translate("wdl", allow_empty_container=True)

