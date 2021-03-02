from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Nanoblaster_V0_1_0 = CommandToolBuilder(tool="nanoblaster", base_command=["nanoblaster"], inputs=[ToolInput(tag="in_specify_one_parameters", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc=": To specify one of the Parameters: -C10, -C25, or -C50")), ToolInput(tag="in_specify_name_reference", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": To specify the name of Reference file")), ToolInput(tag="in_specify_name_reads", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": To specify the name of Reads file")), ToolInput(tag="in_specify_prefix_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": To specify the prefix of Output file")), ToolInput(tag="in_specify_size_kmer", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc=": To specify the size of KMER")), ToolInput(tag="in_specify_size_anchor", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": To specify the size of ANCHOR")), ToolInput(tag="in_specify_min_number", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=": To specify the min number of Clusters")), ToolInput(tag="in_run_program_high", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": To run the program in high sensitive mode")), ToolInput(tag="in_specify_number_aligned", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=": To specify the Number of reads to be aligned")), ToolInput(tag="in_specify_interval_length", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc=": To specify the interval (or Gap) length between KMERs")), ToolInput(tag="in_configure_nanoblaster_using", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc=": To configure NanoBLASTer for less memory using Single index"))], outputs=[ToolOutput(tag="out_specify_prefix_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_specify_prefix_output", type_hint=File()), doc=OutputDocumentation(doc=": To specify the prefix of Output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanoblaster_V0_1_0().translate("wdl", allow_empty_container=True)

