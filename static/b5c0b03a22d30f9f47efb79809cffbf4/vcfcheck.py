from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Vcfcheck_V0_1_0 = CommandToolBuilder(tool="vcfcheck", base_command=["vcfcheck"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="The input file")), ToolInput(tag="in_arg_output_json", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output-file ] arg   The output JSON file with basic counts.")), ToolInput(tag="in_arg_start_location", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[ --location ] arg      Start location.")), ToolInput(tag="in_limit_records", input_type=Int(optional=True), prefix="--limit-records", doc=InputDocumentation(doc="Maximum number of records to process")), ToolInput(tag="in_message_every", input_type=String(optional=True), prefix="--message-every", doc=InputDocumentation(doc="Print a message every N records.")), ToolInput(tag="in_arg_apply_filtering", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --apply-filters ] arg Apply filtering in VCF.")), ToolInput(tag="in_arg_be_strict", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="[ --strict-homref ] arg Be strict about hom-ref assertions (i.e. don't\nallow these to overlap).")), ToolInput(tag="in_check_bcf_errors", input_type=File(optional=True), prefix="--check-bcf-errors", doc=InputDocumentation(doc="Check if turning this file into BCF will succeed\nor fail.")), ToolInput(tag="in_arg_show_warnings", input_type=Boolean(optional=True), prefix="-W", doc=InputDocumentation(doc="[ --all-warnings ] arg  Show all warnings, not just the first instance."))], outputs=[ToolOutput(tag="out_arg_output_json", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_output_json", type_hint=File()), doc=OutputDocumentation(doc="[ --output-file ] arg   The output JSON file with basic counts."))], container="quay.io/biocontainers/hap.py:0.3.14--py27h5c5a3ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfcheck_V0_1_0().translate("wdl")

