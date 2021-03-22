from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Array

Augur_Parse_V0_1_0 = CommandToolBuilder(tool="augur_parse", base_command=["augur", "parse"], inputs=[ToolInput(tag="in_sequences", input_type=String(optional=True), prefix="--sequences", doc=InputDocumentation(doc="sequences in fasta or VCF format (default: None)")), ToolInput(tag="in_output_sequences", input_type=File(optional=True), prefix="--output-sequences", doc=InputDocumentation(doc="output sequences file (default: None)")), ToolInput(tag="in_output_metadata", input_type=File(optional=True), prefix="--output-metadata", doc=InputDocumentation(doc="output metadata file (default: None)")), ToolInput(tag="in_fields", input_type=Array(t=String(), optional=True), prefix="--fields", doc=InputDocumentation(doc="fields in fasta header (default: None)")), ToolInput(tag="in_pret_tify_fields", input_type=Array(t=String(), optional=True), prefix="--prettify-fields", doc=InputDocumentation(doc="apply string prettifying operations (underscores to\nspaces, capitalization, etc) to specified metadata\nfields (default: None)")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--separator", doc=InputDocumentation(doc="separator of fasta header (default: |)")), ToolInput(tag="in_fix_dates", input_type=String(optional=True), prefix="--fix-dates", doc=InputDocumentation(doc="attempt to parse non-standard dates and output them in\nstandard YYYY-MM-DD format (default: None)\n"))], outputs=[ToolOutput(tag="out_output_sequences", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_sequences", type_hint=File()), doc=OutputDocumentation(doc="output sequences file (default: None)")), ToolOutput(tag="out_output_metadata", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_metadata", type_hint=File()), doc=OutputDocumentation(doc="output metadata file (default: None)"))], container="quay.io/biocontainers/augur:11.2.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Augur_Parse_V0_1_0().translate("wdl")

