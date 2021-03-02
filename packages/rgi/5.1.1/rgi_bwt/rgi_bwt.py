from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Rgi_Bwt_V0_1_0 = CommandToolBuilder(tool="rgi_bwt", base_command=["rgi", "bwt"], inputs=[ToolInput(tag="in_read_one", input_type=String(optional=True), prefix="--read_one", doc=InputDocumentation(doc="raw read one (qc and trimmied)")), ToolInput(tag="in_read_two", input_type=String(optional=True), prefix="--read_two", doc=InputDocumentation(doc="raw read two (qc and trimmied)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="name of output filename(s)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="debug mode")), ToolInput(tag="in_clean", input_type=Boolean(optional=True), prefix="--clean", doc=InputDocumentation(doc="removes temporary files")), ToolInput(tag="in_local", input_type=Boolean(optional=True), prefix="--local", doc=InputDocumentation(doc="use local database (default: uses database in\nexecutable directory)")), ToolInput(tag="in_include_wildcard", input_type=Boolean(optional=True), prefix="--include_wildcard", doc=InputDocumentation(doc="include wildcard")), ToolInput(tag="in_include_baits", input_type=Boolean(optional=True), prefix="--include_baits", doc=InputDocumentation(doc="include baits")), ToolInput(tag="in_mapq", input_type=String(optional=True), prefix="--mapq", doc=InputDocumentation(doc="filter reads based on MAPQ score")), ToolInput(tag="in_mapped", input_type=String(optional=True), prefix="--mapped", doc=InputDocumentation(doc="filter reads based on mapped reads")), ToolInput(tag="in_coverage", input_type=String(optional=True), prefix="--coverage", doc=InputDocumentation(doc="filter reads based on coverage of reference sequence")), ToolInput(tag="in_a", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_aligner", input_type=String(), position=0, doc=InputDocumentation(doc="-n THREADS, --threads THREADS"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="name of output filename(s)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Bwt_V0_1_0().translate("wdl", allow_empty_container=True)

