from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Int

Taxmapper_Run_V0_1_0 = CommandToolBuilder(tool="taxmapper_run", base_command=["taxmapper", "run"], inputs=[ToolInput(tag="in_database", input_type=File(optional=True), prefix="--database", doc=InputDocumentation(doc="Database path for RAPseach database index")), ToolInput(tag="in_folder", input_type=Directory(optional=True), prefix="--folder", doc=InputDocumentation(doc="Folder with reads in fasta or fastq format")), ToolInput(tag="in_reverse", input_type=String(optional=True), prefix="--reverse", doc=InputDocumentation(doc="Reads also contain reverse read, [default: True]")), ToolInput(tag="in_suffix", input_type=Int(optional=True), prefix="--suffix", doc=InputDocumentation(doc="Suffix of paired end reads, [default: '_R1,_R2']")), ToolInput(tag="in_maximum_read_length", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Maximum read length")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Output folder, [default: 'results']")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads, [default: 4]\n"))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output folder, [default: 'results']"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxmapper_Run_V0_1_0().translate("wdl", allow_empty_container=True)

