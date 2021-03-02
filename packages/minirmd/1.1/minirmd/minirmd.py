from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Minirmd_V0_1_0 = CommandToolBuilder(tool="minirmd", base_command=["minirmd"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file")), ToolInput(tag="in_file_paired_end", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="file, if paired end")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file")), ToolInput(tag="in_of_allowed_mismatch", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="of allowed mismatch")), ToolInput(tag="in_file_store_values", input_type=File(optional=True), prefix="-k", doc=InputDocumentation(doc="file to store values of k")), ToolInput(tag="in_duplicates_reversecomplement_strand", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="duplicates on reverse-complement strand")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads")), ToolInput(tag="in_help_message", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="help message")), ToolInput(tag="in_parameters", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="output file"))], container="quay.io/biocontainers/minirmd:1.1--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Minirmd_V0_1_0().translate("wdl")

